# Sesi 9 — Manajemen Transaksi

**STSI4105 Basis Data**
Program Studi Sistem Informasi — Universitas Terbuka

> Catatan: dokumen ini merupakan ekstraksi sekaligus elaborasi dari materi *Aktivitas 9 — Manajemen Transaksi*. Setiap konsep dijelaskan lebih dalam dengan analogi, diagram state machine, skenario konflik, dan perintah SQL transaksi. Diagram dari slide digambarkan ulang menggunakan mermaid.

---

## 1. Pengertian Transaksi

> **Transaksi** adalah eksekusi program oleh pengguna di dalam sebuah DBMS sebagai rangkaian membaca dan menulis.

> **Transaksi** merupakan serangkaian proses tindakan atau daftar tindakan dalam sebuah basis data *(Gehrke, n.d.)*. Tindakan tersebut meliputi **membaca (*read*)** dan **menulis (*write*)** pada sebuah basis data.

Karena adanya proses membaca dan menulis secara bersamaan, maka diperlukan **konsistensi basis data** berkaitan dengan integritas data.

```mermaid
flowchart LR
    T["Transaksi\n(serangkaian operasi)"] --> R["READ\nMembaca data\nfrom database"]
    T --> W["WRITE\nMenulis data\nto database"]
    R & W --> DB[("Basis Data")]
    DB --> KONSISTEN["Data harus tetap\nKONSISTEN\nsebelum & sesudah\ntransaksi"]
```

### Contoh Nyata: Transfer Rekening Bank

Bayangkan transaksi transfer saldo Rp 1.000.000 dari rekening A ke rekening B:

```sql
-- Transaksi transfer: harus berhasil SEMUA atau GAGAL SEMUA
START TRANSACTION;
    UPDATE rekening SET saldo = saldo - 1000000 WHERE id = 'A';  -- kurangi A
    UPDATE rekening SET saldo = saldo + 1000000 WHERE id = 'B';  -- tambah B
COMMIT;  -- simpan permanen jika keduanya berhasil
```

Jika langkah pertama berhasil (kurangi A) tetapi langkah kedua gagal (listrik mati), uang "hilang" dari A tetapi tidak masuk ke B. Transaksi memastikan ini **tidak terjadi** — jika salah satu gagal, semuanya dibatalkan (*rollback*).

### Kegunaan Transaksi

```mermaid
flowchart LR
    TRX["Transaksi dalam DBMS"] --> K1["Menjaga KONSISTENSI data\n(semua operasi berhasil\natau semua dibatalkan)"]
    TRX --> K2["Mengoptimalkan KINERJA DBMS\n(pengelompokan operasi\nmengurangi disk I/O)"]
    TRX --> K3["Mengelola KONKURENSI\n(banyak pengguna mengakses\ndata secara bersamaan)"]
```

---

## 2. Properti ACID

Berkaitan dengan integritas data, terdapat properti-properti yang menjamin bahwa transaksi dapat berjalan dengan baik. Properti-properti ini dikenal dengan **ACID**:

```mermaid
flowchart TD
    ACID["ACID\nProperti Transaksi"] --> A["Atomicity\n(Atomisitas)"]
    ACID --> C["Consistency\n(Konsistensi)"]
    ACID --> I["Isolation\n(Isolasi)"]
    ACID --> D["Durability\n(Ketahanan)"]
```

### 2.1 Atomicity (Atomisitas)

> Transaksi adalah **satu unit pekerjaan yang tidak bisa dibagi-bagi** — semua operasi berhasil (*commit*) atau semua dibatalkan (*rollback*).

Tidak ada keadaan "setengah selesai". Jika transaksi transfer bank gagal di tengah jalan, DBMS memastikan saldo A dikembalikan ke nilai semula.

```mermaid
flowchart LR
    subgraph TRX2["Transaksi"]
        OP1["Operasi 1"] --> OP2["Operasi 2"] --> OP3["Operasi 3"]
    end
    TRX2 -->|"Semua berhasil"| COMMIT["COMMIT\n(tersimpan permanen)"]
    TRX2 -->|"Salah satu gagal"| ROLLBACK["ROLLBACK\n(semua dikembalikan)"]
```

### 2.2 Consistency (Konsistensi)

> Transaksi membawa basis data dari **satu keadaan konsisten ke keadaan konsisten lainnya**. Constraint integritas (PRIMARY KEY, FOREIGN KEY, NOT NULL, CHECK) harus terpenuhi sebelum dan sesudah transaksi.

Contoh: total saldo sebelum transfer (A+B = 5jt) harus sama dengan total saldo sesudah transfer (A+B = 5jt). Nilainya berpindah, totalnya konsisten.

### 2.3 Isolation (Isolasi)

> Transaksi yang berjalan bersamaan **tidak boleh saling mengganggu**. Setiap transaksi seolah-olah berjalan sendiri, tanpa melihat perubahan yang sedang dikerjakan transaksi lain.

Contoh: jika transaksi A sedang memindahkan saldo, transaksi B yang membaca saldo pada saat bersamaan tidak boleh melihat nilai "setengah jalan" (setelah saldo A dikurangi tapi sebelum saldo B ditambah).

### 2.4 Durability (Ketahanan)

> Setelah transaksi berhasil di-*commit*, perubahan **tersimpan permanen** — bahkan jika sistem crash, listrik mati, atau terjadi kegagalan lainnya setelahnya.

DBMS menggunakan mekanisme **write-ahead log (WAL)** untuk menjamin ini: setiap perubahan dicatat ke log dulu sebelum ditulis ke disk data.

| Properti | Pertanyaan | Dijawab oleh |
|---|---|---|
| **Atomicity** | Apakah semua operasi selesai atau tidak sama sekali? | Recovery Manager |
| **Consistency** | Apakah data tetap valid sesuai aturan? | Programmer + DBMS constraint |
| **Isolation** | Apakah transaksi lain tidak mengganggu? | Concurrency Control |
| **Durability** | Apakah data aman setelah commit? | Recovery Manager + Write-Ahead Log |

---

## 3. Transaksi dan Penjadwalan

Dalam sistem dengan banyak pengguna, banyak transaksi berjalan **secara bersamaan** (*concurrent*). Penjadwalan (*scheduling*) menentukan urutan operasi dari berbagai transaksi yang dieksekusi.

```mermaid
flowchart TD
    subgraph SERIAL["Eksekusi Serial (aman tapi lambat)"]
        T1S["Transaksi 1\n(selesai penuh)"] --> T2S["Transaksi 2\n(baru mulai)"]
    end
    subgraph CONCURRENT["Eksekusi Konkuren (cepat tapi berisiko)"]
        T1C["T1: R(A)"] --> T2C["T2: R(A)"] --> T3C["T1: W(A)"] --> T4C["T2: W(A)"]
    end
    SERIAL -->|"tidak efisien\n(CPU idle saat I/O)"| PROB["Masalah:\nperforma rendah"]
    CONCURRENT -->|"bisa konflik\njika tidak dikontrol"| PROB2["Masalah:\ninkonsistensi data"]
    PROB2 --> SOL["Solusi:\nConcurrency Control"]
```

---

## 4. Transisi dalam Transaksi (State Machine)

Sebuah transaksi dapat berada di salah satu dari empat kemungkinan keadaan (*state*):

```mermaid
stateDiagram-v2
    [*] --> Active : Transaksi dimulai
    Active --> PartiallyCommitted : Operasi terakhir selesai
    Active --> Failed : Error / kegagalan sistem
    PartiallyCommitted --> Committed : Verifikasi sukses → COMMIT
    PartiallyCommitted --> Failed : Tidak bisa dilanjutkan
    Failed --> Aborted : ROLLBACK selesai
    Committed --> [*] : Transaksi selesai berhasil
    Aborted --> [*] : Transaksi selesai dibatalkan
    Aborted --> Active : Restart transaksi (opsional)
```

| State | Nama Indonesia | Keterangan |
|---|---|---|
| **Active** | Aktif | *Initial state* — transaksi masih dilaksanakan (operasi READ/WRITE berjalan) |
| **Partially Committed** | Berhasil Sebagian | Dicapai tepat saat operasi terakhir selesai dikerjakan; belum final |
| **Failed** | Gagal | Transaksi gagal atau terhenti; belum selesai; tidak bisa dilanjutkan |
| **Aborted** | Batal | Transaksi dianggap belum pernah dikerjakan; DBMS kembalikan data ke kondisi awal (*rollback*) |
| **Committed** | Berhasil | Transaksi selesai dan semua perubahan tersimpan permanen |

### Penjelasan Detail Setiap State

**Active**: Transaksi dimulai (`START TRANSACTION`) dan sedang mengeksekusi operasi-operasi (READ, WRITE). Status ini berlangsung selama operasi berjalan.

**Partially Committed**: Semua operasi dalam transaksi telah selesai dieksekusi, tetapi perubahan belum ditulis secara permanen ke disk. DBMS sedang melakukan verifikasi akhir. Dari sini bisa menuju *Committed* (verifikasi sukses) atau *Failed* (ada masalah saat verifikasi).

**Failed**: Eksekusi tidak bisa dilanjutkan — bisa karena error logika, kegagalan hardware, atau deadlock. Transaksi harus di-*rollback*.

**Aborted**: DBMS telah selesai melakukan *rollback* — semua perubahan yang dibuat transaksi ini sudah dikembalikan ke kondisi sebelum transaksi. Ini adalah tanggung jawab penuh DBMS. Setelah *aborted*, transaksi bisa di-restart (jika error bersifat sementara) atau dihentikan permanen (jika error bersifat logis).

---

## 5. Perintah SQL untuk Transaksi

Dalam MySQL/MariaDB, manajemen transaksi dikendalikan dengan perintah berikut:

```sql
-- Mulai transaksi
START TRANSACTION;
-- atau
BEGIN;

-- Simpan permanen semua perubahan dalam transaksi ini
COMMIT;

-- Batalkan semua perubahan dan kembalikan ke kondisi sebelum transaksi
ROLLBACK;

-- Buat titik simpan (checkpoint) di dalam transaksi
SAVEPOINT nama_savepoint;

-- Rollback ke titik simpan tertentu (bukan ke awal transaksi)
ROLLBACK TO SAVEPOINT nama_savepoint;
```

### Contoh Lengkap: Transfer Bank

```sql
START TRANSACTION;

    -- Kurangi saldo rekening pengirim
    UPDATE rekening SET saldo = saldo - 1000000 WHERE id_rekening = 'A001';

    -- Periksa apakah saldo mencukupi (validasi)
    -- Jika saldo rekening A sekarang negatif, rollback!
    -- (logika ini biasanya di lapisan aplikasi)

    -- Tambah saldo rekening penerima
    UPDATE rekening SET saldo = saldo + 1000000 WHERE id_rekening = 'B002';

    -- Catat ke log transaksi
    INSERT INTO log_transfer (dari, ke, jumlah, waktu)
    VALUES ('A001', 'B002', 1000000, NOW());

COMMIT;  -- jika semua berhasil, simpan permanen

-- Jika ada error di tengah jalan:
-- ROLLBACK;  -- kembalikan semua ke kondisi semula
```

---

## 6. Kontrol Konkurensi (*Concurrency Control*)

> ***Concurrency control*** merupakan sebuah aturan yang mengatur operasi pada sebuah transaksi tanpa mengganggu transaksi lain sehingga data menjadi konsisten *(Connolly & Begg, n.d.)*.

### Mengapa Concurrency Control Diperlukan?

Tanpa kontrol, eksekusi konkuren dapat menimbulkan tiga masalah utama:

```mermaid
flowchart TD
    MASALAH["Masalah Tanpa\nConcurrency Control"] --> M1["Lost Update\n(Pembaruan Hilang)"]
    MASALAH --> M2["Dirty Read\n(Baca Data Kotor)"]
    MASALAH --> M3["Unrepeatable Read\n(Baca Tak Konsisten)"]
```

**Lost Update (Pembaruan Hilang)**: dua transaksi membaca nilai yang sama, keduanya melakukan perhitungan, lalu keduanya menulis — pembaruan transaksi pertama ditimpa oleh transaksi kedua.

| Waktu | Transaksi T1 | Transaksi T2 | Saldo |
|---|---|---|---|
| t1 | READ(saldo) = 1000 | | 1000 |
| t2 | | READ(saldo) = 1000 | 1000 |
| t3 | saldo = 1000 - 100 = 900; WRITE | | 900 |
| t4 | | saldo = 1000 - 200 = 800; WRITE | 800 |
| t5 | — | — | **800** (seharusnya 700!) |

Pembaruan T1 (-100) hilang karena T2 membaca sebelum T1 menulis.

**Dirty Read (Baca Data Kotor)**: T2 membaca data yang sedang dimodifikasi T1 tetapi T1 kemudian di-*rollback* — T2 membaca data yang tidak pernah benar-benar tersimpan.

**Unrepeatable Read**: T1 membaca nilai X, T2 mengubah X dan commit, T1 membaca X lagi dan mendapat nilai berbeda — dalam satu transaksi yang sama, nilai yang dibaca berubah.

### Komponen Concurrency Control

*Concurrency control* meliputi:

1. **Schedule / Penjadwalan** — urutan eksekusi operasi dari transaksi-transaksi yang berjalan bersamaan
2. **Serializability** — sebuah *schedule* disebut *serializable* jika hasilnya ekuivalen dengan eksekusi serial (berurutan satu per satu) — ini adalah standar kebenaran untuk concurrency control

```mermaid
flowchart LR
    SCHEDULE["Schedule\n(urutan eksekusi\noperasi konkuren)"] --> SER{"Apakah\nserializable?"}
    SER -->|"Ya"| SAFE["Aman — hasil\nsama dengan\nexekusi serial"]
    SER -->|"Tidak"| UNSAFE["Berbahaya —\nbisa terjadi\ninkonsistensi"]
```

---

## 7. Teknik *Concurrency Control*

Dalam *concurrency control*, terdapat **2 teknik/metode** utama:

```mermaid
flowchart TD
    CC["Teknik Concurrency Control"] --> L["1. Penguncian\n(Locking)"]
    CC --> T["2. Timestamp"]
    L --> LNote["Mengunci objek data\nsaat diakses transaksi\nagar transaksi lain menunggu"]
    T --> TNote["Menggunakan cap waktu\n(timestamp) untuk menentukan\nurutan prioritas transaksi"]
    LNote & TNote --> DELAY["Dapat menyebabkan\npenundaan transaksi lain\npada kasus yang konflik"]
```

### 7.1 Penguncian (*Locking*)

Locking mengunci objek data (baris atau tabel) selama transaksi menggunakannya, sehingga transaksi lain harus menunggu sampai kunci dilepas.

Terdapat dua jenis kunci:

| Jenis Kunci | Simbol | Deskripsi | Kompatibel dengan |
|---|---|---|---|
| **Shared Lock** (S) | *read lock* | Boleh digunakan untuk membaca; banyak transaksi bisa memegang shared lock bersamaan | Shared Lock lain |
| **Exclusive Lock** (X) | *write lock* | Digunakan untuk menulis; hanya satu transaksi yang boleh memegang pada satu waktu | Tidak ada |

**Matriks Kompatibilitas Kunci**:

| | Shared (S) | Exclusive (X) |
|---|---|---|
| **Shared (S)** | Kompatibel ✓ | Tidak kompatibel ✗ |
| **Exclusive (X)** | Tidak kompatibel ✗ | Tidak kompatibel ✗ |

```mermaid
sequenceDiagram
    participant T1
    participant LOCK as Lock Manager
    participant T2

    T1->>LOCK: Minta X-Lock pada data A
    LOCK-->>T1: X-Lock diberikan
    T2->>LOCK: Minta S-Lock pada data A
    LOCK-->>T2: Menunggu (A sedang dikunci T1)
    T1->>LOCK: Operasi selesai, lepas kunci
    LOCK-->>T2: S-Lock diberikan
    T2->>LOCK: Operasi selesai, lepas kunci
```

### 7.2 Timestamp

Setiap transaksi diberi **cap waktu (*timestamp*)** saat dimulai — biasanya berdasarkan waktu sistem atau counter monoton. Timestamp ini menentukan **urutan prioritas** transaksi.

```mermaid
flowchart LR
    T1_NEW["T1 baru\ntimestamp = 100"] -->|"ingin akses data\nyang dikunci T2"| CECK{"timestamp T1\nvs timestamp T2"}
    T2_OLD["T2 lama\ntimestamp = 50"]
    CECK -->|"T1 lebih baru\n(100 > 50)\n→ T1 menunggu atau digagalkan"| WAIT["T1 menunggu\nT2 selesai"]
    CECK -->|"T1 lebih lama\n(100 < 50)\n→ T1 berhak jalan"| GO["T1 jalan\nT2 digagalkan/diulang"]
```

---

## 8. *Deadlock*

> ***Deadlock*** merupakan kebuntuan yang mungkin terjadi ketika dua (atau lebih) transaksi masing-masing menunggu kunci untuk dilepaskan yang dipegang oleh yang lain.

```mermaid
flowchart LR
    T1_D["Transaksi T1\nmemegang kunci A\nmenunggu kunci B"] -->|"menunggu"| T2_D["Transaksi T2\nmemegang kunci B\nmenunggu kunci A"]
    T2_D -->|"menunggu"| T1_D
    T1_D & T2_D --> DEAD["DEADLOCK!\nKeduanya menunggu\nselamanya"]
```

### Skenario Deadlock

| Waktu | T1 | T2 |
|---|---|---|
| t1 | X-Lock(A) → dapat | |
| t2 | | X-Lock(B) → dapat |
| t3 | Minta X-Lock(B) → **tunggu T2** | |
| t4 | | Minta X-Lock(A) → **tunggu T1** |
| t5 | **DEADLOCK** | **DEADLOCK** |

T1 menunggu T2 melepas B, T2 menunggu T1 melepas A — siklus tak berujung.

### Teknik Mengatasi Deadlock

Terdapat **3 teknik** untuk mengatasi deadlock:

```mermaid
flowchart TD
    DEAD2["Deadlock"] --> TK1["1. Timeout"]
    DEAD2 --> TK2["2. Deadlock Prevention"]
    DEAD2 --> TK3["3. Deadlock Recovery"]
    TK1 --> D1["Jika kunci tidak diberikan\ndalam periode tertentu →\ntransaksi digagalkan\ndan diulang dari awal"]
    TK2 --> D2["Gunakan timestamp:\ntransaksi baru harus\nlebih besar timestamp-nya\njika ingin kunci transaksi lama"]
    TK3 --> D3["Rollback transaksi\nyang terlibat deadlock\nke posisi terdekat\ndengan titik deadlock"]
```

#### Teknik 1 — Timeout

*Timeout* adalah suatu kondisi di mana kunci belum diberikan pada periode tertentu, sehingga akan kehabisan waktu tunggu. Jika sebuah transaksi berada pada posisi *timeout*, maka DBMS harus:
1. Menggagalkan transaksi tersebut
2. Secara otomatis mengulang dari awal transaksi

```sql
-- Contoh set timeout di MySQL
SET innodb_lock_wait_timeout = 50;  -- tunggu maksimal 50 detik
-- Jika melebihi 50 detik, transaksi otomatis digagalkan
```

#### Teknik 2 — Deadlock Prevention

Salah satu pencegahan adalah dengan cara **transaksi timestamp**:

- Transaksi **baru** harus memiliki *timestamp* **lebih kecil** dibandingkan transaksi **lama** (agar transaksi lama prioritas lebih tinggi)
- Jika transaksi **baru** menginginkan kunci dari transaksi **lama**, maka *timestamp* transaksi baru harus **lebih besar** dari transaksi lama
- Jika kedua kondisi tersebut tidak terpenuhi → transaksi akan **digagalkan** (untuk mencegah potensi deadlock)

Dua protokol populer:
- **Wait-Die**: transaksi lama menunggu transaksi baru; transaksi baru "mati" (digagalkan) jika menginginkan data yang dikunci transaksi lama
- **Wound-Wait**: transaksi lama "melukai" (menggagalkan) transaksi baru; transaksi baru menunggu jika transaksi lama yang membutuhkan

#### Teknik 3 — Deadlock Recovery

Ketika *deadlock* terjadi, DBMS menjalankan *rollback* pada transaksi yang mengalami *deadlock* tersebut:

1. Deteksi deadlock — DBMS membangun **Wait-for Graph**: jika ada siklus dalam graf, deadlock terdeteksi
2. Pilih transaksi "korban" (*victim*) — biasanya yang paling mudah di-rollback (yang sudah paling sedikit mengerjakan operasi)
3. Tentukan posisi *rollback* — apakah dari awal transaksi atau dari posisi paling dekat dengan deadlock (*partial rollback*)
4. Jalankan *rollback* dan lepaskan kunci — transaksi lain yang menunggu bisa melanjutkan

> **Penting**: pengembalian kegagalan transaksi (*rollback*) harus benar-benar diperhatikan karena berdampak pada sifat transaksi yaitu **ACID** — terutama Atomicity (harus rollback semua), Consistency (data harus kembali konsisten), dan Isolation (transaksi lain tidak boleh melihat state yang di-rollback).

---

## Ringkasan Keterkaitan Antar Konsep

```mermaid
flowchart TD
    TRX3["Transaksi\n(rangkaian operasi READ/WRITE)"] --> ACID2["Properti ACID\n(Atomicity, Consistency,\nIsolation, Durability)"]
    TRX3 --> STATE["State Machine\n(Active → Partially Committed\n→ Committed / Aborted)"]
    TRX3 --> CONCURRENT2["Eksekusi Konkuren\n(banyak transaksi bersamaan)"]
    CONCURRENT2 --> MASALAH2["Masalah Potensial\n(Lost Update, Dirty Read,\nUnrepeatable Read)"]
    MASALAH2 --> CC2["Concurrency Control\n(Schedule + Serializability)"]
    CC2 --> LOCKING["Locking\n(Shared Lock / Exclusive Lock)"]
    CC2 --> TIMESTAMP["Timestamp\n(prioritas berdasarkan waktu)"]
    LOCKING & TIMESTAMP --> DEADLOCK2["Deadlock\n(siklus tunggu-menunggu)"]
    DEADLOCK2 --> DK1["Timeout\n(batas waktu tunggu)"]
    DEADLOCK2 --> DK2["Prevention\n(timestamp ordering)"]
    DEADLOCK2 --> DK3["Recovery\n(rollback victim)"]
```

Inti dari sesi ini: **manajemen transaksi adalah mekanisme yang menjamin basis data tetap dalam keadaan benar dan konsisten meski ada banyak pengguna mengakses secara bersamaan dan meski terjadi kegagalan sistem**. Properti ACID adalah jaminan formalnya. State machine transaksi (Active → Partially Committed → Committed/Aborted) adalah siklus hidupnya. Concurrency control (Locking dan Timestamp) adalah alat untuk menjaga Isolation. Dan ketika Locking menciptakan siklus tunggu yang tidak bisa diselesaikan sendiri — itulah *deadlock* — yang bisa diatasi dengan Timeout, Prevention, atau Recovery.

---

*Selamat Belajar...*
