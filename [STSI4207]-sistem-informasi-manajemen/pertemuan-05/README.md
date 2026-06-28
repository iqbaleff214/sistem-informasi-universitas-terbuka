# Keamanan Sistem Informasi

**STSI4207 Sistem Informasi Manajemen**
Program Studi Sistem Informasi — Fakultas Sains dan Teknologi — Universitas Terbuka

Materi ini membahas **keamanan sistem informasi** — kelemahan yang dapat dieksploitasi, ancaman dari Internet, perangkat lunak jahat (*malware*), kejahatan komputer, hingga alat dan teknik untuk melindungi sistem informasi dari berbagai ancaman tersebut.

> Kaitan dengan Inisiasi 4 (STSI4207): jika Inisiasi 4 membahas **infrastruktur teknologi informasi** sebagai fondasi (perangkat keras, jaringan, Internet), Inisiasi 5 ini membahas **bagaimana fondasi tersebut dapat diserang** dan bagaimana melindunginya — keamanan adalah dimensi yang harus selalu menyertai setiap infrastruktur teknologi informasi yang dibangun.

---

## 1. Masalah Keamanan Sistem Informasi

### 1.1 Kelemahan Sistem Informasi

Setiap sistem informasi memiliki masalah keamanan berupa **kelemahan** yang dapat disalahgunakan oleh berbagai pihak yang tidak bertanggung jawab.

Kelemahan pertama adalah melalui **jalur telekomunikasi** yang menghubungkan berbagai komputer dalam satu jaringan. Akses sistem utama sebuah organisasi besar seringkali dilakukan dari **jarak jauh**. Dengan demikian, sulit untuk memastikan bahwa pengguna yang mengakses memang berhak dan bukan orang lain.

### Potensi Ancaman terhadap Sistem Informasi

Berikut rekonstruksi diagram potensi ancaman yang menyertai setiap lapisan, dari pengguna hingga basis data internal organisasi:

```mermaid
flowchart LR
    PENGGUNA["Pengguna\n(desktop, mobile, laptop)"] -->|"Penyadapan, Pengubahan Data,\nPencurian & Penipuan, Radiasi,\nAkses Tanpa Ijin, Kesalahan"| SERVER["Server\nPerusahaan"]
    SERVER -->|"Hacking, Malware,\nPencurian & Penipuan,\nVandalisme, DDoS"| SISTEM["Sistem Internal\n& Basis Data"]
    SISTEM -.->|"Pencurian Data, Penyalinan Data,\nPengubahan Data, Kegagalan\nPerangkat Keras/Lunak"| SISTEM
```

| Lapisan | Potensi Ancaman |
|---|---|
| **Pengguna → Server Perusahaan** | Penyadapan, pengubahan data, pencurian dan penipuan, radiasi, akses tanpa izin, kesalahan |
| **Server Perusahaan → Sistem Internal/Basis Data** | *Hacking*, *malware*, pencurian dan penipuan, vandalisme, DDoS |
| **Pada Sistem Internal & Basis Data** | Pencurian data, penyalinan data, pengubahan data, kegagalan perangkat keras, kegagalan perangkat lunak |

> Diagram ini menunjukkan bahwa ancaman keamanan **terjadi di setiap lapisan**, bukan hanya pada satu titik — mulai dari sisi pengguna yang mengakses dari jarak jauh, jalur komunikasi ke server, hingga sistem dan basis data internal organisasi itu sendiri.

### 1.2 Ancaman dari Internet

Sifat **keterbukaan dari Internet** menjadikannya sebagai sistem yang memiliki **lebih banyak kelemahan dan ancaman keamanan** dibandingkan jaringan komputer lokal. Beberapa contoh masalah keamanan di Internet:

```mermaid
flowchart TD
    INTANCAM["Ancaman Keamanan\ndi Internet"] --> A1["Serangan pada DNS\n(pengguna tidak dapat\nmengakses suatu situs)"]
    INTANCAM --> A2["Data Percakapan (VoIP)\nyang Tidak Terenkripsi"]
    INTANCAM --> A3["Penyadapan Perangkat melalui\nJaringan Nirkabel (WiFi) Publik"]
```

#### Ilustrasi: Pencurian Data Menggunakan Jaringan WiFi

```mermaid
flowchart TD
    AP["Access Point WiFi"] -->|sinyal terbuka| LAP["Laptop Pengguna"]
    AP -->|sinyal terbuka| TAB["Tablet Pengguna"]
    AP -->|sinyal terbuka| PON["Ponsel Pengguna"]
    ATT["Laptop Penyadap\n(berada dalam jangkauan\nsinyal WiFi yang sama)"] -.->|menyadap lalu lintas data\ndalam jangkauan sinyal| AP
```

> Karena sinyal WiFi publik dipancarkan secara terbuka ke segala arah, **siapa pun dalam jangkauan sinyal** (termasuk pihak yang tidak berwenang) berpotensi menyadap lalu lintas data yang melewati jaringan tersebut — inilah mengapa transaksi sensitif sebaiknya tidak dilakukan melalui WiFi publik tanpa enkripsi tambahan (misalnya VPN).

### 1.3 Perangkat Lunak Jahat (*Malware*)

*Malware* seringkali disebut **virus komputer**. Namun, virus komputer hanyalah **salah satu jenis** dari beberapa jenis *malware*. Satu jenis *malware* yang belakangan muncul dan banyak menyerang adalah ***ransomware***.

```mermaid
flowchart TD
    MAL["Malware\n(Perangkat Lunak Jahat)"] --> VIRUS["Virus Komputer\n(menempel pada perangkat\nlunak/data lain, dieksekusi\ndiam-diam tanpa izin)"]
    MAL --> RANSOM["Ransomware\n(mengenkripsi data komputer\nsehingga tidak dapat diakses)"]
```

| Jenis | Definisi |
|---|---|
| **Virus Komputer** | Perangkat lunak jahat yang **menempelkan diri** pada perangkat lunak atau data lain, dan akan **dieksekusi secara diam-diam** tanpa sepengetahuan atau izin pengguna. |
| **Ransomware** | *Malware* yang akan **mengenkripsi data komputer** sehingga pengguna tidak dapat mengakses data tersebut (biasanya pelaku meminta tebusan untuk memulihkannya). |

### 1.4 Kejahatan Komputer

Pelaku kejahatan komputer biasanya disebut sebagai ***hacker***. Awalnya, istilah *hacker* mengacu kepada orang yang memiliki **keahlian dan kegemaran khusus** terkait komputer. Istilah ini mengalami **degradasi makna** menjadi pelaku kejahatan komputer.

```mermaid
flowchart TD
    HACK["Hacker"] --> ASLI["Makna Awal:\nOrang dengan keahlian &\nkegemaran khusus komputer"]
    HACK --> DEGRADASI["Makna Saat Ini:\nPelaku Kejahatan Komputer\n(degradasi makna)"]
```

Beberapa kejahatan komputer:

```mermaid
flowchart TD
    KK2["Kejahatan Komputer"] --> SPOOF["Spoofing\n(situs palsu menyerupai\nsitus asli)"]
    KK2 --> SNIFF["Sniffing\n(aplikasi khusus\nmenyadap jaringan)"]
    KK2 --> DDOS["DDoS Attack\n(membanjiri server dengan\npermintaan berlebihan)"]
    KK2 --> CARDING["Carding\n(memakai kartu kredit\norang lain secara daring)"]
```

| Kejahatan | Penjelasan |
|---|---|
| **Spoofing** | Membuat situs palsu yang menyerupai situs asli untuk mengumpulkan data pribadi dari pengguna situs asli. |
| **Sniffing** | Membuat aplikasi khusus untuk menyadap informasi melalui suatu jaringan. |
| **DDoS Attack** | Membanjiri server yang dituju dengan permintaan atas data yang berlebihan sehingga server kewalahan dan berhenti bekerja. |
| **Carding** | Menggunakan kartu kredit milik orang lain untuk membeli barang atau jasa secara daring. |

#### Ilustrasi: Spoofing

```mermaid
sequenceDiagram
    participant ATK as Komputer Penyerang<br/>(192.168.7.9)
    participant SRV as Server<br/>(192.168.17.8)
    participant VIC as Komputer Korban<br/>(192.168.1.2)

    ATK->>SRV: Menyamar sebagai 192.168.1.2,<br/>minta Data A
    SRV->>VIC: Data A diberikan<br/>(dikirim ke alamat IP yang disamarkan)
```

> Pada ilustrasi ini, komputer penyerang dengan alamat IP **192.168.7.9** mengirim permintaan ke server seolah-olah ia adalah komputer dengan alamat **192.168.1.2**. Server yang tidak dapat membedakan keaslian identitas pengirim kemudian merespons sesuai alamat yang "disamarkan" tersebut — inilah inti dari teknik **spoofing**: memanipulasi identitas (alamat IP) untuk menipu sistem agar memperlakukan pengirim palsu seolah pengirim yang sah.

---

## 2. Alat dan Teknik Keamanan Sistem Informasi

### 2.1 Regulasi Pemerintah

Untuk melindungi keamanan sistem informasi dan data, pemerintah telah mengeluarkan **Undang-Undang Nomor 11 Tahun 2008** tentang **Informasi dan Transaksi Elektronik (UU ITE)**.

Regulasi lain yang juga digunakan untuk menjaga kerahasiaan data dan keamanan sistem informasi:

```mermaid
flowchart TD
    REG["Regulasi Keamanan\nSistem Informasi di Indonesia"] --> R1["UU No. 11/2008\n(UU ITE)"]
    REG --> R2["Permen Kominfo No. 20/2016\n(Perlindungan Data Pribadi/PDP)"]
    REG --> R3["Permenkes No. 269/2008\n(Kerahasiaan Data Rekam\nMedis Pasien)"]
    REG --> R4["UU No. 16/2009\n(Ketentuan Umum Perpajakan —\nwajib simpan data ≥10 tahun)"]
```

| Regulasi | Mengatur |
|---|---|
| **UU No. 11 Tahun 2008 (UU ITE)** | Informasi dan Transaksi Elektronik secara umum. |
| **Permen Kominfo No. 20 Tahun 2016** | Perlindungan Data Pribadi (PDP). |
| **Permenkes No. 269 Tahun 2008** | Kerahasiaan data rekam medis pasien di institusi kesehatan. |
| **UU No. 16 Tahun 2009** | Ketentuan Umum Perpajakan — kewajiban wajib pajak menyimpan data perpajakan minimal **10 tahun**. |

### 2.2 Pengendalian (*Controls*)

Selain regulasi dari pemerintah, perlu adanya **teknik** dalam menjaga keamanan sistem informasi dan integritas data. Salah satu *tools* yang dapat digunakan adalah **pengendalian**.

> **Pengendalian** didefinisikan sebagai metode, kebijakan, dan prosedur organisasi yang memastikan **keamanan aset organisasi**, **akurasi dan keandalan catatan akuntansinya**, dan **kepatuhan operasional** terhadap standar manajemen (Gelinas et al., 2018; Turner et al., 2017).

Terdapat dua macam pengendalian:

```mermaid
flowchart LR
    PENGENDALIAN["Pengendalian"] --> UMUM["Pengendalian Umum\n(perancangan, keamanan,\npenggunaan TI & data di\nseluruh tingkatan organisasi)"]
    PENGENDALIAN --> APLIKASI["Pengendalian Aplikasi\n(teknik spesifik untuk\ntiap aplikasi berbasis komputer)"]
```

### 2.3 Teknik Tambahan Keamanan Sistem Informasi

Tiga teknik lain yang digunakan untuk menjaga keamanan sistem informasi:

```mermaid
flowchart TD
    TEKNIK["Teknik Keamanan\nSistem Informasi"] --> DRP["Disaster Recovery\nPlanning (DRP)"]
    TEKNIK --> BCP["Business Continuity\nPlanning (BCP)"]
    TEKNIK --> PT["Penetration\nTesting"]
```

| Teknik | Penjelasan |
|---|---|
| **Disaster Recovery Planning (DRP)** | Panduan langkah-langkah yang harus dilakukan untuk **memulihkan layanan sistem informasi** jika terganggu oleh bencana atau risiko lain. |
| **Business Continuity Planning (BCP)** | Mengidentifikasi proses bisnis yang **kritis dan penting**, untuk kemudian disiapkan rencana **meneruskan aktivitas** jika terjadi bencana. |
| **Penetration Testing** | Teknik masuk ke suatu sistem informasi dengan cara **menemukan dan mengeksploitasi kelemahan** sistem informasi — dilakukan secara terkendali untuk menemukan celah sebelum dieksploitasi pihak yang tidak berwenang. |

> Ketiga teknik ini saling melengkapi: **DRP** berfokus pada pemulihan **sistem teknis** setelah bencana, **BCP** berfokus pada kelangsungan **proses bisnis** secara keseluruhan, sementara **Penetration Testing** bersifat **proaktif** — menemukan kelemahan sebelum insiden terjadi, alih-alih hanya bereaksi setelahnya.

---

## Ringkasan Keterkaitan Antar Konsep

```mermaid
flowchart TD
    KELEMAHAN["Kelemahan Sistem Informasi\n(jalur telekomunikasi, akses jarak jauh)"] --> ANCAMAN["Ancaman dari Internet\n(DNS, VoIP tidak terenkripsi, WiFi publik)"]
    ANCAMAN --> MALWARE2["Malware\n(virus, ransomware)"]
    MALWARE2 --> KEJAHATAN["Kejahatan Komputer\n(spoofing, sniffing, DDoS, carding)"]
    KEJAHATAN --> REGULASI["Regulasi Pemerintah\n(UU ITE, PDP, dll.)"]
    REGULASI --> PENGENDALIAN2["Pengendalian\n(umum & aplikasi)"]
    PENGENDALIAN2 --> TEKNIK2["Teknik Tambahan\n(DRP, BCP, Penetration Testing)"]
```

Inti dari materi ini: keamanan sistem informasi harus dipandang sebagai **rangkaian pertahanan berlapis** — mulai dari memahami **kelemahan** yang melekat pada sistem (jalur komunikasi, keterbukaan Internet), mengenali **bentuk-bentuk ancaman konkret** (*malware*, *hacking*, *spoofing*, dan sejenisnya), hingga menerapkan **regulasi, pengendalian, dan teknik mitigasi** (DRP, BCP, *Penetration Testing*) secara bersamaan. Tidak ada satu teknik tunggal yang cukup — organisasi perlu mengombinasikan kepatuhan regulasi, kontrol internal, dan kesiapan menghadapi insiden untuk benar-benar melindungi sistem informasinya.
