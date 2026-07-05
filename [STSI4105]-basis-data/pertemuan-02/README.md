# Sesi 2 — Konsep Basis Data

**STSI4105 Basis Data**
Program Studi Sistem Informasi — Universitas Terbuka

> Catatan: dokumen ini merupakan ekstraksi sekaligus elaborasi dari materi *Aktivitas 2 — Konsep Basis Data*. Setiap poin dijelaskan lebih dalam dengan konteks, analogi, dan contoh nyata agar lebih mudah dipahami secara utuh. Diagram konseptual digambarkan ulang menggunakan mermaid.

---

## 1. Pengertian Basis Data

### Definisi Komponen Utama

Sebelum mendefinisikan basis data secara utuh, penting memahami dua kata pembentuknya:

> **Basis** dapat diartikan sebagai markas, gudang, tempat bersarang, atau tempat berkumpul.

> **Data** adalah representasi fakta dunia nyata yang mewakili suatu objek — seperti manusia (pegawai, siswa, pembeli, pelanggan), barang, hewan, peristiwa, konsep, keadaan, dan sebagainya — yang direkam dalam bentuk angka, huruf, simbol, teks, gambar, bunyi, atau kombinasinya.

```mermaid
flowchart LR
    D["DATA\n(representasi fakta dunia nyata)"] --> BD["BASIS DATA\n(gudang/tempat berkumpul data)"]
    BD --> T["Disimpan dalam\nTabel/File\nsesuai fungsinya"]
    T --> E["Penelusuran data\nmenjadi cepat & efisien"]
```

### Definisi Basis Data

> **Basis data** (*database*) adalah kumpulan data yang disimpan dalam *table/file* sesuai dengan fungsinya masing-masing, sehingga penelusuran data dapat dilakukan dengan cepat dan efisien.

Konsep kuncinya: data tidak diletakkan sembarangan, melainkan **diorganisir berdasarkan entitas/fungsinya** — tabel mahasiswa, tabel mata kuliah, tabel nilai — sehingga ketika dibutuhkan, sistem bisa langsung menuju tabel yang tepat tanpa harus membaca seluruh data.

---

## 2. Manfaat Basis Data

> **Manfaat utama basis data** adalah untuk pengelolaan data dalam memudahkan atau menemukan kembali data yang dicari dengan cepat.

Secara lebih luas, manfaat basis data dapat dirasakan di berbagai aspek:

```mermaid
flowchart TD
    BD["Basis Data"] --> M1["Pencarian data\nlebih cepat"]
    BD --> M2["Pengelolaan data\nlebih terstruktur"]
    BD --> M3["Data dapat dibagi\nke banyak aplikasi"]
    BD --> M4["Meminimalkan\nredundansi data"]
    BD --> M5["Keamanan akses\ndapat dikontrol"]
```

> Bayangkan sebuah perpustakaan tanpa sistem katalog: menemukan satu buku memerlukan pencarian manual rak per rak. Basis data adalah sistem katalog digital yang membuat pencarian menjadi instan.

---

## 3. Tujuan Basis Data

Terdapat **sembilan tujuan** yang ingin dicapai dengan penggunaan basis data:

```mermaid
flowchart TD
    BD["Tujuan\nBasis Data"] --> T1["1. Speed\nKecepatan & Kemudahan"]
    BD --> T2["2. Space\nEfisiensi Ruang Penyimpanan"]
    BD --> T3["3. Accuracy\nKeakuratan Data"]
    BD --> T4["4. Security\nKeamanan Data"]
    BD --> T5["5. Consistent\nKeselarasan Data"]
    BD --> T6["6. Sharebility\nKebersamaan Pemakaian"]
    BD --> T7["7. Standardization\nStandarisasi Data"]
    BD --> T8["8. Availability\nKetersediaan Data"]
    BD --> T9["9. Completeness\nKelengkapan Data"]
```

| # | Tujuan | Penjelasan |
|---|---|---|
| 1 | **Speed** (Kecepatan & Kemudahan) | Basis data memungkinkan penyimpanan, perubahan, penghapusan, penambahan, dan pemanggilan kembali data dengan cepat dan mudah. |
| 2 | **Space** (Efisiensi Ruang) | Penggunaan ruang penyimpanan diminimalkan dengan menekan pengulangan data dan jumlah pengkodean yang redundan. |
| 3 | **Accuracy** (Keakuratan) | Pengkodean, pembentukan relasi antar data, dan penerapan aturan/batasan tipe data memastikan data yang masuk akurat. |
| 4 | **Security** (Keamanan) | Sistem dapat menentukan siapa yang boleh mengakses basis data dan jenis operasi apa saja yang diizinkan — penting untuk sistem skala besar dan kritis. |
| 5 | **Consistent** (Keselarasan) | Perubahan data pada satu aplikasi otomatis berlaku untuk seluruh aplikasi lain yang menggunakan basis data yang sama. |
| 6 | **Sharebility** (Kebersamaan) | Data dapat dipakai secara bersamaan oleh beberapa program aplikasi pada saat yang sama tanpa konflik. |
| 7 | **Standardization** (Standarisasi) | Pengontrolan terpusat memungkinkan penerapan standar penyimpanan data, memudahkan distribusi dan pertukaran data antar sistem. |
| 8 | **Availability** (Ketersediaan) | Basis data dapat memilah data utama, data transaksi, data *history*, hingga data kedaluwarsa — data lama dapat diarsipkan terpisah dari sistem aktif. |
| 9 | **Completeness** (Kelengkapan) | Kelengkapan data bersifat relatif tergantung kebutuhan pengguna; basis data memungkinkan penambahan struktur data sesuai kebutuhan yang berkembang. |

---

## 4. Kelebihan Basis Data

Dibanding sistem penyimpanan data tradisional berbasis file terpisah, basis data menawarkan **delapan kelebihan** utama:

| # | Kelebihan | Penjelasan |
|---|---|---|
| 1 | **Kemandirian Data** | Sebuah basis data dapat digunakan oleh bermacam-macam program aplikasi tanpa harus mengubah format data yang sudah ada. |
| 2 | **Konsistensi Data** | Data disimpan hanya sekali; jika ada perubahan nilai, perubahan dilakukan satu kali dan nilai baru langsung tersedia untuk semua pengguna. |
| 3 | **Aksesibilitas Lebih Baik** | Integrasi data yang melampaui batasan departemen memungkinkan pengguna mengakses data lintas divisi secara langsung. |
| 4 | **Kendali Kerangkapan** | Data disimpan hanya satu kali, mengurangi duplikasi (*redundancy*) dan menghemat biaya penyimpanan. |
| 5 | **Keamanan Data** | Basis data dapat menentukan batasan akses melalui mekanisme *password* dan hak akses per operasi (*update*, *delete*, *insert*, *select*). |
| 6 | **Integritas Data** | Integritas diekspresikan melalui *constraints* — aturan yang konsisten dan tidak dapat dilanggar — menjaga validitas dan konsistensi data. |
| 7 | **Pemakaian Bersama** | Data milik seluruh organisasi dapat dipakai bersama oleh semua pengguna yang berwenang secara bersamaan. |
| 8 | **Informasi Lebih Kaya** | Karena semua data ada dalam satu tempat, pengguna dapat mengekstrak informasi lintas entitas yang tidak mungkin dilakukan pada sistem file terpisah. |

---

## 5. Kekurangan Basis Data

Penggunaan basis data bukan tanpa tantangan. Terdapat **tiga kekurangan** utama yang perlu dipertimbangkan:

```mermaid
flowchart LR
    KK["Kekurangan\nBasis Data"] --> K1["Biaya Tinggi\nHardware + Software\n+ Storage + Network"]
    KK --> K2["Kompleksitas\nPerancang, Developer,\nDBA & User harus\nmemahami secara rinci"]
    KK --> K3["Biaya Konversi\nMigrasi sistem lama,\npelatihan staf,\nrekrutmen DBA"]
```

| # | Kekurangan | Detail |
|---|---|---|
| 1 | **Biaya Tinggi** | Mencakup biaya pembelian sekaligus perawatan *hardware* dan *software*, ditambah biaya penyimpanan (*storage*), jaringan (*network*), dan lain-lain. |
| 2 | **Kompleksitas** | Perancang, pengembang, DBA (*Database Administrator*), dan pengguna akhir harus memahami fungsi basis data secara rinci dan mendalam. Kegagalan memanfaatkannya dapat menyebabkan kerugian besar. |
| 3 | **Biaya Konversi** | Diperlukan biaya besar untuk berpindah dari sistem lama ke basis data baru: biaya migrasi data, pelatihan staf menggunakan sistem baru, dan rekrutmen staf khusus seperti DBA. |

> **DBA (Database Administrator)** adalah peran krusial yang bertanggung jawab atas desain, pemeliharaan, keamanan, dan performa basis data. Rekrutmen DBA yang kompeten adalah investasi penting, bukan biaya yang bisa dihindari.

---

## 6. Tingkatan Data dalam Database Relasi

Dalam database relasi, data diorganisir dalam **hierarki empat tingkatan** — dari yang paling besar hingga yang paling kecil:

```mermaid
flowchart TD
    TB["TABEL\n(kumpulan record dengan\nstruktur yang sama)"] --> REC["RECORD / Baris\n(satu entri/kejadian lengkap\ndalam tabel)"]
    REC --> FLD["FIELD / Kolom\n(satu atribut spesifik\ndari suatu record)"]
    FLD --> KAR["KARAKTER\n(satu huruf, angka, simbol\n— unit terkecil data)"]
```

| Tingkatan | Istilah Lain | Contoh (Tabel Mahasiswa) |
|---|---|---|
| **Tabel** | Relasi, Entity | Tabel `mahasiswa` |
| **Record** | Baris (*Row*), Tuple | Data 1 mahasiswa: `(12345, Budi, Sistem Informasi)` |
| **Field** | Kolom (*Column*), Atribut | `nim`, `nama`, `prodi` |
| **Karakter** | Byte, Karakter | `B`, `u`, `d`, `i` (satu per satu huruf) |

> Pemahaman hierarki ini penting karena ketika menulis query SQL, kita selalu bekerja di level yang berbeda: `SELECT` mengambil *field*, `WHERE` memfilter *record*, dan `FROM` menentukan *tabel*.

---

## 7. Operasi Dasar Basis Data

Semua interaksi dengan basis data dilakukan melalui **delapan operasi dasar** — yang dalam SQL dibagi menjadi dua kelompok besar:

```mermaid
flowchart TD
    OP["Operasi Dasar\nBasis Data"] --> DDL["DDL\n(Data Definition Language)\nMendefinisikan STRUKTUR"]
    OP --> DML["DML\n(Data Manipulation Language)\nMemanipulasi DATA"]

    DDL --> D1["CREATE DATABASE\nMembuat basis data baru"]
    DDL --> D2["DROP DATABASE\nMenghapus basis data beserta isinya"]
    DDL --> D3["CREATE TABLE\nMembuat tabel baru dalam basis data"]
    DDL --> D4["DROP TABLE\nMenghapus tabel beserta semua datanya"]

    DML --> D5["INSERT\nMenambahkan record baru ke tabel"]
    DML --> D6["SELECT\nMengambil/membaca data dari tabel"]
    DML --> D7["UPDATE\nMengubah nilai data pada record tertentu"]
    DML --> D8["DELETE\nMenghapus record dari tabel"]
```

| Kelompok | Operasi | Fungsi |
|---|---|---|
| **DDL** | `CREATE DATABASE` | Membuat basis data baru. |
| **DDL** | `DROP DATABASE` | Menghapus seluruh basis data beserta semua tabel dan datanya. |
| **DDL** | `CREATE TABLE` | Mendefinisikan struktur tabel baru (nama kolom, tipe data, constraints). |
| **DDL** | `DROP TABLE` | Menghapus tabel beserta seluruh data yang tersimpan di dalamnya. |
| **DML** | `INSERT` | Menambahkan satu atau lebih record baru ke dalam tabel. |
| **DML** | `SELECT` | Mengambil/menampilkan data dari satu atau lebih tabel. |
| **DML** | `UPDATE` | Mengubah nilai field tertentu pada record yang memenuhi kondisi. |
| **DML** | `DELETE` | Menghapus record yang memenuhi kondisi dari tabel. |

> Keempat operasi DML (`INSERT`, `SELECT`, `UPDATE`, `DELETE`) sering disingkat **CRUD** (*Create, Read, Update, Delete*) dalam konteks pengembangan aplikasi — terminologi yang akan terus dijumpai sepanjang karier sebagai developer.

---

## 8. Penerapan Basis Data

Basis data digunakan hampir di setiap sektor industri. Beberapa domain penerapan yang paling umum:

```mermaid
flowchart LR
    BD["Basis Data"] --> P1["Kepegawaian\nPerusahaan dengan\nbanyak pegawai"]
    BD --> P2["Pergudangan (Inventory)\nPabrik, grosir,\napotik, dll."]
    BD --> P3["Akuntansi\nPencatatan keuangan\nberbagai perusahaan"]
    BD --> P4["Reservasi\nHotel, pesawat,\nkereta api, dll."]
    BD --> P5["Layanan Pelanggan\n(Customer Care)\nBank, konsultan, dll."]
```

| Domain | Contoh Penggunaan |
|---|---|
| **Kepegawaian** | Menyimpan data karyawan, absensi, penggajian, riwayat jabatan. |
| **Pergudangan (*Inventory*)** | Mencatat stok barang masuk-keluar, data pemasok, dan posisi barang di gudang. |
| **Akuntansi** | Mencatat transaksi keuangan, menghasilkan laporan keuangan, mengelola piutang dan utang. |
| **Reservasi** | Mengelola ketersediaan kursi/kamar, pemesanan, pembatalan, dan pembayaran secara real-time. |
| **Layanan Pelanggan** | Menyimpan riwayat interaksi pelanggan, tiket pengaduan, dan profil pelanggan untuk layanan yang personal. |

---

## 9. Klasifikasi DBMS

**DBMS (Database Management System)** adalah perangkat lunak yang mengelola, mengakses, dan mengontrol basis data. DBMS dapat diklasifikasikan berdasarkan tiga kriteria:

```mermaid
flowchart TD
    DBMS["Klasifikasi DBMS"] --> C1["1. Berdasarkan\nModel Data"]
    DBMS --> C2["2. Berdasarkan\nJumlah Pengguna"]
    DBMS --> C3["3. Berdasarkan\nSistem Distribusi"]

    C1 --> M1["Relasional (RDBMS)\nMySQL, PostgreSQL,\nOracle, SQL Server"]
    C1 --> M2["Hierarki\nData terorganisir\nseperti pohon"]
    C1 --> M3["Jaringan\nHubungan many-to-many\nantar node"]
    C1 --> M4["Objek-Relasional\nGabungan OOP & relasional"]
    C1 --> M5["NoSQL\nMongoDB, Cassandra,\nRedis (untuk Big Data)"]

    C2 --> U1["Single-User\nHanya satu pengguna\npada satu waktu"]
    C2 --> U2["Multi-User\nBanyak pengguna\nbersamaan (server)"]

    C3 --> S1["Terpusat (Centralized)\nSatu server tunggal"]
    C3 --> S2["Terdistribusi (Distributed)\nData tersebar di\nbanyak server/lokasi"]
    C3 --> S3["Client-Server\nKlien mengirim request,\nserver memproses & merespons"]
```

| Klasifikasi | Jenis | Keterangan |
|---|---|---|
| **Model Data** | Relasional | Model paling populer — data disimpan dalam tabel dengan baris dan kolom; hubungan antar tabel via *foreign key*. |
| | Hierarki | Data terstruktur seperti pohon (*tree*); setiap *node* anak hanya punya satu *node* induk. |
| | Jaringan | Pengembangan model hierarki yang memungkinkan satu *node* anak memiliki banyak *node* induk (*many-to-many*). |
| | NoSQL | Dirancang untuk data skala besar (*Big Data*) yang tidak terstruktur; fleksibel dan sangat skalabel. |
| **Jumlah Pengguna** | *Single-User* | Hanya satu pengguna aktif pada satu waktu — umum untuk aplikasi *desktop* lokal. |
| | *Multi-User* | Mendukung banyak pengguna secara bersamaan — standar untuk aplikasi *web* dan *enterprise*. |
| **Sistem Distribusi** | Terpusat | Seluruh data dan DBMS berada dalam satu server tunggal; sederhana namun rawan jadi *single point of failure*. |
| | Terdistribusi | Data tersebar di banyak server/lokasi yang terhubung jaringan; lebih tangguh dan skalabel. |
| | *Client-Server* | Klien mengirim *request* ke server; server memproses dan mengembalikan hasil — arsitektur paling umum untuk aplikasi modern. |

---

## 10. Abstraksi Data

Abstraksi data adalah cara DBMS menyembunyikan kerumitan teknis penyimpanan data dari pengguna. Terdapat **tiga level abstraksi**:

```mermaid
flowchart TD
    VL["Level Pandangan\n(View Level)\n— Lapisan Tertinggi —\nApa yang PENGGUNA lihat\n(subset data sesuai kebutuhan)"] --> CL["Level Logik / Konseptual\n(Conceptual Level)\n— Lapisan Tengah —\nApa yang ADA dalam basis data\n& hubungan antar data\n(dipakai DBA)"]
    CL --> PL["Level Fisik\n(Physical Level)\n— Lapisan Terendah —\nBagaimana data DISIMPAN\nsecara fisik di disk\n(struktur terperinci)"]
```

| Level | Pertanyaan Kunci | Pengguna | Contoh |
|---|---|---|---|
| **Level Fisik** (*Physical Level*) | *How* — bagaimana data disimpan? | Pengembang DBMS, sistem operasi | Indeks B-Tree, blok disk, byte offset. |
| **Level Konseptual** (*Conceptual Level*) | *What* — data apa yang ada & bagaimana hubungannya? | DBA (*Database Administrator*) | "Data mahasiswa ada di tabel `mahasiswa`, terhubung ke tabel `KRS` via kolom `nim`." |
| **Level Pandangan** (*View Level*) | *Who sees what* — siapa boleh melihat apa? | Pengguna akhir, aplikasi | Bagian keuangan hanya melihat data keuangan; bagian akademik hanya melihat data nilai. |

> Konsep tiga level ini dikenal sebagai **Arsitektur ANSI/SPARC** — standar yang memastikan **independensi data**: perubahan di level fisik (misalnya mengganti mesin server) tidak mempengaruhi aplikasi di level pandangan. Inilah yang membuat basis data jauh lebih fleksibel dibanding sistem file tradisional.

---

## 11. Basis Data dalam Sistem Informasi

> **Sistem informasi** merupakan kombinasi teratur dari manusia, *hardware*, *software*, jaringan komunikasi, dan sumber daya data, yang mengumpulkan, mengubah, dan menyebarkan informasi dalam sebuah organisasi.

Dalam ekosistem sistem informasi, basis data berperan sebagai **tulang punggung penyimpanan data**:

```mermaid
flowchart LR
    MAN["Manusia\n(Pengguna & Analis)"] --> SI["SISTEM INFORMASI"]
    HW["Hardware\n(Server, PC, Mobile)"] --> SI
    SW["Software\n(Aplikasi)"] --> SI
    NET["Jaringan Komunikasi"] --> SI
    SI --> BD2["BASIS DATA\n(Media Penyimpan Data)"]
    BD2 --> INFO["Informasi yang:\n• Tepat\n• Akurat\n• Bermanfaat"]
```

> Tanpa basis data, sistem informasi hanya bisa mengolah data sementara di memori — informasi yang dihasilkan tidak persisten dan tidak bisa dibagi. Basis data adalah yang membuat sistem informasi benar-benar *berguna* untuk pengambilan keputusan organisasi.

---

## 12. DBMS: Traditional File Base System vs Database Management System

Memahami perbedaan dua pendekatan ini membantu menjelaskan *mengapa* basis data lahir:

```mermaid
flowchart TD
    subgraph TFBS["Traditional File Base System"]
        A1["Aplikasi 1"] --> F1["File Data A"]
        A2["Aplikasi 2"] --> F2["File Data A (duplikat!)"]
        A3["Aplikasi 3"] --> F3["File Data B"]
    end
    subgraph DBMS2["Database Management System"]
        B1["Aplikasi 1"] --> DBMS3["DBMS"]
        B2["Aplikasi 2"] --> DBMS3
        B3["Aplikasi 3"] --> DBMS3
        DBMS3 --> DB["Satu Basis Data\nTerpusat"]
    end
```

| Aspek | Traditional File Base System | Database Management System |
|---|---|---|
| **Penyimpanan** | Data tersebar dalam banyak file terpisah per aplikasi. | Data terpusat dalam satu basis data yang dibagi bersama. |
| **Redundansi** | Tinggi — data yang sama muncul di banyak file. | Minimal — data disimpan satu kali, diakses banyak aplikasi. |
| **Konsistensi** | Rendah — perubahan di satu file tidak otomatis update file lain. | Tinggi — perubahan di satu titik langsung berlaku ke seluruh sistem. |
| **Keamanan** | Terbatas pada keamanan file OS (*read/write*). | Granular — hak akses per tabel, per kolom, per operasi. |
| **Integritas** | Harus dijaga manual oleh programmer. | Dijaga oleh DBMS melalui *constraints* dan *transactions*. |
| **Contoh** | Penyimpanan data dalam file `.csv`, `.txt`, spreadsheet Excel terpisah. | MySQL, PostgreSQL, Oracle, SQL Server, MongoDB. |

---

## Ringkasan Keterkaitan Antar Konsep

```mermaid
flowchart TD
    DEF["Definisi Basis Data\n(Basis = gudang, Data = representasi fakta)"] --> MAN["Manfaat\n(pengelolaan & pencarian data cepat)"]
    MAN --> TUJ["9 Tujuan\n(Speed, Space, Accuracy, Security,\nConsistent, Sharebility, Standardization,\nAvailability, Completeness)"]
    TUJ --> KEL["Kelebihan (8)\nvs Kekurangan (3)"]
    KEL --> HIER["Hierarki Data\nTabel → Record → Field → Karakter"]
    HIER --> OPS["8 Operasi Dasar\nDDL: CREATE/DROP DATABASE/TABLE\nDML: INSERT/SELECT/UPDATE/DELETE"]
    OPS --> TERAPAN["Penerapan\n(Kepegawaian, Inventory, Akuntansi,\nReservasi, Customer Care)"]
    TERAPAN --> KLAS["Klasifikasi DBMS\n(Model Data, Jumlah Pengguna,\nSistem Distribusi)"]
    KLAS --> ABS["3 Level Abstraksi\nFisik → Konseptual → Pandangan"]
    ABS --> SI["Basis Data dalam SI\n(tulang punggung penyimpanan)"]
    SI --> DBMS4["DBMS\nTraditional File System\nvs Database Management System"]
```

Inti dari sesi ini: **basis data** adalah solusi terstruktur untuk menyimpan dan mengelola data yang terus tumbuh. Dibanding sistem file tradisional, basis data unggul dalam kecepatan akses, konsistensi, keamanan, dan kemampuan berbagi data. Namun, keunggulan ini datang dengan biaya — baik finansial (hardware, software, DBA) maupun teknis (kompleksitas desain). Memahami hierarki data (tabel→record→field→karakter), operasi dasar (DDL & DML), tiga level abstraksi (fisik→konseptual→pandangan), dan berbagai klasifikasi DBMS adalah fondasi yang harus kokoh sebelum melangkah ke desain dan implementasi basis data yang lebih kompleks.

---

*Selamat Belajar...*
