# Inisiasi 8: Pembuatan Keputusan Bisnis & Pengembangan Sistem Informasi

**STSI4207 Sistem Informasi Manajemen**
Program Studi Sistem Informasi — Fakultas Sains dan Teknologi — Universitas Terbuka

Materi inisiasi terakhir ini terdiri dari dua bagian: **(A) Peran Sistem Informasi dalam Pembuatan Keputusan Bisnis**, dan **(B) Pengembangan Sistem Informasi**. Bagian A membahas bagaimana sistem informasi mendukung pengambilan keputusan, sedangkan Bagian B membahas bagaimana sistem informasi itu sendiri dibangun.

> Kaitan dengan Inisiasi 1–7 (STSI4207): materi ini menjadi **penutup** yang menyatukan seluruh rangkaian sebelumnya — keputusan bisnis (Bagian A) memanfaatkan data dan pengetahuan yang telah dibahas pada Inisiasi 6, sementara pengembangan sistem (Bagian B) adalah proses untuk **membangun** infrastruktur, aplikasi (ERP/SCM/CRM dari Inisiasi 7), dan keamanan (Inisiasi 5) yang sudah dibahas sebelumnya.

---

# Bagian A — Peran Sistem Informasi dalam Pembuatan Keputusan Bisnis

## 1. Pembuatan Keputusan Bisnis

- **Masa lalu:** manajer mengalami kesulitan dalam mengambil keputusan disebabkan oleh **akses informasi yang terbatas**.
- **Masa kini:** manajer menghadapi fenomena **kelebihan informasi** (*information overload*).
- **Sistem informasi berbasis komputer** diharapkan dapat **memfilter** informasi tersebut guna meningkatkan kualitas keputusan yang dihasilkan.

```mermaid
flowchart LR
    MASALALU["Masa Lalu:\nAkses Informasi Terbatas"] --> KESULITAN["Kesulitan\nMengambil Keputusan"]
    MASAKINI["Masa Kini:\nKelebihan Informasi"] --> FILTER["Sistem Informasi\nBerbasis Komputer\n(memfilter informasi)"]
    FILTER --> KUALITAS3["Kualitas Keputusan\nMeningkat"]
```

> Perubahan dari "akses terbatas" ke "kelebihan informasi" ini menggarisbawahi mengapa **Intelegensi Bisnis** (bagian 4) menjadi semakin penting di era saat ini — bukan lagi soal mencari informasi, tetapi menyaring informasi yang relevan dari lautan data yang tersedia.

---

## 2. Tipe Keputusan

```mermaid
flowchart TD
    TIPE["Tipe Keputusan"] --> TS["Keputusan Terstruktur\n(prosedur sudah jelas)"]
    TIPE --> TTS["Keputusan Tidak Terstruktur\n(butuh pertimbangan)"]
    TIPE --> SEMI["Keputusan Semi Terstruktur\n(elemen terstruktur &\ntidak terstruktur)"]
```

| Tipe | Penjelasan |
|---|---|
| **Keputusan Terstruktur** | Keputusan yang sudah jelas urutan prosedurnya. Apa yang harus dilakukan jika ada suatu kondisi yang dihadapi sudah digariskan secara tertulis. |
| **Keputusan Tidak Terstruktur** | Keputusan yang mengharuskan pembuat keputusan melakukan **pertimbangan**. |
| **Keputusan Semi Terstruktur** | Keputusan yang memiliki **elemen terstruktur dan tidak terstruktur**. |

---

## 3. Proses Pembuatan Keputusan Rasional

Proses pengambilan keputusan yang rasional harus melalui **empat tahapan**, dan dapat **kembali ke tahap sebelumnya** (iteratif) apabila diperlukan:

```mermaid
flowchart TD
    PF["Pencarian Fakta\n(identifikasi & pahami masalah)"] --> PR["Perancangan\n(identifikasi alternatif solusi)"]
    PR --> PM["Pemilihan\n(memilih alternatif solusi)"]
    PM --> IM["Implementasi\n(menerapkan & memantau solusi)"]
    PR -.->|jika perlu kembali\nmencari fakta lagi| PF
    PM -.->|jika perlu merancang\nulang| PR
    IM -.->|jika perlu memilih\nalternatif lain| PM
```

| Tahap | Penjelasan |
|---|---|
| **Pencarian Fakta** | Identifikasi masalah dan memahami masalah merupakan tahapan penting dalam mencari solusi. Pertanyaan yang dapat diajukan antara lain: mengapa muncul suatu masalah, di mana masalah tersebut muncul, apa dampak masalah tersebut pada perusahaan, dan lainnya. **Kesalahan dalam memahami masalah akan mengakibatkan kesalahan dalam pembuatan keputusan.** |
| **Perancangan** | Setelah diketahui permasalahan dan penyebabnya, maka diidentifikasi berbagai **alternatif solusi**. Dampak negatif maupun positif dari masing-masing alternatif solusi harus diketahui. |
| **Pemilihan** | Pembuat keputusan memilih alternatif solusi yang sudah dirumuskan pada tahapan perancangan. |
| **Implementasi** | Alternatif solusi yang sudah dipilih diterapkan oleh perusahaan. **Pemantauan terus dilakukan** guna melihat seberapa baik solusi yang dipilih tersebut menyelesaikan masalah. |

> Sifat iteratif proses ini (digambarkan dengan tanda panah melengkung kembali ke tahap sebelumnya pada diagram asli) menunjukkan bahwa pembuatan keputusan rasional **bukan proses satu arah** — jika pada tahap Implementasi ditemukan bahwa solusi tidak berjalan baik, pembuat keputusan dapat kembali ke tahap Pemilihan atau bahkan Perancangan untuk mengevaluasi ulang.

### Penggunaan Model dalam Pembuatan Keputusan

**Model** dapat didefinisikan sebagai **penyederhanaan atas realita** guna mengidentifikasi variabel dan parameter yang mempengaruhi suatu hal (Eppen et al., 1998; Turban, Leidner, MacLean, & Wetherbe, 2006).

```mermaid
flowchart TD
    MODEL["Keunggulan\nMenggunakan Model"] --> M1["Lebih Murah & Mudah\nDimanipulasi daripada\nKondisi Sesungguhnya"]
    MODEL --> M2["Memungkinkan Simulasi\ndalam Waktu Lebih Singkat"]
    MODEL --> M3["Dapat Memasukkan\nKetidakpastian &\nAnalisis Bagaimana-Jika"]
    MODEL --> M4["Memberikan Kesempatan\nBelajar Tanpa Harus\nMengalami Sendiri"]
```

### Otomatisasi Pembuatan Keputusan

Dengan mengenali parameter apa saja yang terlibat dalam sebuah keputusan dan proses bisnisnya, keputusan dapat **diambil alih oleh komputer**. Untuk dapat menggunakan model pembuatan keputusan otomatis ini dibutuhkan (Laudon & Laudon, 2018; Radu & Necula, 2011):

```mermaid
flowchart LR
    OTO["Pembuatan Keputusan\nOtomatis"] --> O1["Algoritma Komputer\n(langkah demi langkah)"]
    OTO --> O2["Basis Data\nyang Sangat Besar"]
    OTO --> O3["Komputer\nBerkecepatan Tinggi"]
    OTO --> O4["Aplikasi yang Dioptimalkan\nuntuk Otomatisasi"]
```

---

## 4. Intelegensi Bisnis (*Business Intelligence*)

### Definisi

**Intelegensi bisnis** adalah **infrastruktur** guna **menyimpan, mengintegrasikan, menganalisis, dan melaporkan** data yang berasal dari lingkungan bisnis (Berger & Doban, 2014; Goh, 2006; Hendriks & Jacobs, 2003; Karakiewicz, Sun, & Azizi, 2014; Rubin & Rubin, 2013). Data yang dikelola termasuk **Big Data**.

> Intelegensi bisnis **bukan sistem yang berdiri sendiri**, melainkan sistem yang tercipta dari suatu **ekosistem**.

### Ekosistem Intelegensi Bisnis

```mermaid
flowchart TD
    EKO["Ekosistem\nIntelegensi Bisnis"] --> E1["Data dari Lingkungan\n(terstruktur & tidak terstruktur,\ninternal & eksternal)"]
    EKO --> E2["Infrastruktur Intelegensi Bisnis\n(basis data kuat)"]
    EKO --> E3["Alat Analisis Data Bisnis\n(software analisis, KPI)"]
    EKO --> E4["Pengguna & Metode Manajerial"]
    EKO --> E5["Platform Penyampaian Informasi"]
    EKO --> E6["Antarmuka Pengguna\n(representasi visual)"]
```

| Komponen | Penjelasan |
|---|---|
| **Data dari Lingkungan** | Data terstruktur dan tidak terstruktur dari berbagai sumber internal dan eksternal. |
| **Infrastruktur Intelegensi Bisnis** | Sistem basis data yang kuat untuk menangkap, menyimpan, dan mengolah data bisnis yang beragam. |
| **Alat Analisis Data Bisnis** | Sekumpulan alat berupa perangkat lunak untuk melakukan analisis dan menghasilkan laporan, menanggapi pertanyaan manajer, dan melacak kemajuan bisnis menggunakan **Key Performance Indicator (KPI)**. |
| **Pengguna & Metode Manajerial** | Perangkat keras dan perangkat lunak intelegensi bisnis hanya akan bermanfaat jika digunakan oleh pengguna yang tepat dan tahu apa yang harus dilakukan. |
| **Platform Penyampaian Informasi** | Hasil intelegensi bisnis harus didistribusikan pada para manajer dan karyawan di berbagai tingkatan organisasi. |
| **Antarmuka Pengguna** | Output akan lebih mudah dipahami jika menggunakan **representasi visual**, bukan hanya teks atau tabel. |

### Intelegensi Bisnis pada Level Manajerial

```mermaid
flowchart LR
    IB["Intelegensi Bisnis"] --> DSS["Manajer Menengah:\nDecision Support System (DSS)\n(prediksi perubahan variabel)"]
    IB --> BSC["Manajer Puncak:\nBalanced Scorecard (BSC)\n(KPI tiap dimensi pengukuran)"]
```

> Intelegensi bisnis mendukung pembuatan **keputusan terstruktur dan semi terstruktur** pada level manajerial — selaras dengan klasifikasi **Tipe Keputusan** pada bagian 2.

### Faktor Peningkatan Penggunaan Intelegensi Bisnis

```mermaid
flowchart TD
    FAKTOR2["Faktor Peningkatan\nPenggunaan Intelegensi Bisnis"] --> FB1["Perangkat Cerdas\n(akses data di mana saja\n& kapan saja)"]
    FAKTOR2 --> FB2["Kemajuan Teknologi BI\n& Analisis Data\n(memungkinkan Big Data)"]
    FAKTOR2 --> FB3["Komputasi Awan\n(akses kapan & di mana saja)"]
    FAKTOR2 --> FB4["Data sebagai\nKomoditas Besar"]
```

> Faktor **komputasi awan** ini berkaitan langsung dengan tahap evolusi infrastruktur TI (komputasi awan dan bergerak) yang dibahas pada Inisiasi 4 — intelegensi bisnis modern sangat bergantung pada infrastruktur cloud untuk dapat diakses kapan saja dan di mana saja.

---

# Bagian B — Pengembangan Sistem Informasi

## 5. Kriteria Keberhasilan Pengembangan Sistem Informasi

Pengembangan sistem informasi dianggap berhasil jika memenuhi **tiga kriteria**:

```mermaid
flowchart LR
    KRITERIA["Kriteria Keberhasilan\nPengembangan SI"] --> KR1["Selesai\nTepat Waktu"]
    KRITERIA --> KR2["Biaya Sesuai\ndengan Anggaran"]
    KRITERIA --> KR3["Fungsi, Kinerja, & Fitur\nSesuai Harapan"]
```

---

## 6. Perubahan Organisasi

Sistem informasi baru akan membawa perubahan dalam organisasi, yang dapat berwujud:

```mermaid
flowchart TD
    PO["Wujud Perubahan\nOrganisasi"] --> PO1["Otomatisasi\nProses Bisnis"]
    PO --> PO2["Rasionalisasi\nProses Bisnis"]
    PO --> PO3["Perancangan Ulang\nProses Bisnis"]
    PO --> PO4["Pergeseran\nParadigma"]
```

> Empat wujud ini tersusun dari **perubahan paling ringan ke paling radikal**: **otomatisasi** hanya mengganti cara kerja manual menjadi otomatis tanpa mengubah proses; **rasionalisasi** menyederhanakan prosedur; **perancangan ulang** mengubah keseluruhan alur proses bisnis; dan **pergeseran paradigma** mengubah cara berpikir fundamental organisasi tentang bisnisnya.

---

## 7. Systems Development Life Cycle (SDLC)

***Systems Development Life Cycle* (SDLC)** adalah salah satu metodologi pengembangan sistem informasi yang memiliki **enam tahapan**:

```mermaid
flowchart LR
    S1["1. Analisis\nSistem"] --> S2["2. Perancangan\nSistem"]
    S2 --> S3["3. Pemrograman"]
    S3 --> S4["4. Pengujian\nSistem"]
    S4 --> S5["5. Konversi\nSistem"]
    S5 --> S6["6. Penggunaan &\nPerawatan Sistem"]
```

> Tahapan SDLC ini sejalan dengan tahapan SDLC yang lebih umum sudah dibahas pada mata kuliah Rekayasa Perangkat Lunak (STSI4202, Sesi 3) — istilah dan urutannya sedikit berbeda namun esensinya sama: analisis kebutuhan, desain, implementasi/coding, pengujian, peluncuran (konversi), hingga pemeliharaan.

### Kelebihan SDLC

```mermaid
flowchart TD
    KEL["Kelebihan SDLC"] --> KE1["Standar Dokumentasi\nBaku"]
    KEL --> KE2["Dokumentasi Lengkap\n(memudahkan edukasi pengguna)"]
    KEL --> KE3["Tahapan dengan Batas\n(cutover) & Artefak yang Jelas"]
```

### Kelemahan SDLC

```mermaid
flowchart TD
    LEM["Kelemahan SDLC"] --> L1["Tidak Mampu Memenuhi\nKebutuhan Manajemen"]
    LEM --> L2["Pemodelan Proses\nTidak Stabil"]
    LEM --> L3["Perancangan\nTidak Fleksibel"]
    LEM --> L4["Ketidakpuasan\nPengguna"]
    LEM --> L5["Permasalahan\nDokumentasi"]
    LEM --> L6["Kekurangan\nPengendalian"]
    LEM --> L7["Sistem Tidak Lengkap"]
    LEM --> L8["Antrian Pengembangan\nAplikasi"]
    LEM --> L9["Beban Kerja\nPerawatan Sistem"]
    LEM --> L10["Permasalahan dengan\nPendekatan Ideal"]
    LEM --> L11["Penekanan pada\nPendekatan Teknis"]
    LEM --> L12["Asumsi Semua Sistem\nDibuat dari Kondisi Baru"]
```

### Penyempurnaan SDLC

Beberapa alat dan metodologi baru dirancang untuk menyempurnakan SDLC (Sarosa, 2017):

```mermaid
flowchart TD
    PENY["Penyempurnaan SDLC"] --> P1["Analisis & Perancangan\nBerorientasi Objek"]
    PENY --> P2["Rapid Application\nDevelopment (RAD)"]
    PENY --> P3["Joint Application\nDevelopment (JAD)"]
    PENY --> P4["Prototyping\n(Pembuatan Purwarupa)"]
    PENY --> P5["Agile Methods\n(XP, Scrum, Crystal, dll.)"]
    PENY --> P6["Computer Aided Systems\nEngineering (CASE)"]
```

> Daftar penyempurnaan ini selaras dengan model-model SDLC alternatif (RAD, Prototipe, Iteratif/Agile) yang sudah dibahas secara lebih rinci pada STSI4202 Sesi 3 — menunjukkan bahwa kelemahan SDLC klasik (waterfall) memang menjadi pendorong lahirnya berbagai metodologi alternatif tersebut.

---

## 8. Proyek dan Manajemen Proyek

> **Proyek** adalah serangkaian aktivitas terencana, yang saling berkaitan, dan yang memiliki rentang waktu pengerjaan tertentu (ada awal dan ada akhir yang jelas) untuk mencapai tujuan bisnis tertentu.

> **Manajemen proyek** adalah penerapan pengetahuan, keahlian, alat, dan teknik untuk mencapai sasaran yang spesifik dalam waktu dan anggaran yang telah ditentukan.

### Kategori Proyek Pengembangan Sistem Informasi

```mermaid
flowchart TD
    KAT["Kategori Proyek\nPengembangan SI"] --> BERHASIL["Berhasil\n(tepat waktu, sesuai anggaran,\nsemua fitur terwujud)"]
    KAT --> GAGAL["Gagal\n(dihentikan di tengah jalan,\nsistem gagal terwujud)"]
    KAT --> BERMASALAH["Bermasalah\n(selesai namun melebihi waktu/\nanggaran, fitur tidak lengkap)"]
```

### Keberhasilan Proyek

Lima variabel utama dalam menilai apakah proyek berhasil atau tidak:

```mermaid
flowchart LR
    VAR["5 Variabel\nKeberhasilan Proyek"] --> V1["Ruang Lingkup\nProyek"]
    VAR --> V2["Waktu\nPelaksanaan"]
    VAR --> V3["Biaya\nPelaksanaan"]
    VAR --> V4["Kualitas"]
    VAR --> V5["Risiko"]
```

### Dimensi Risiko Proyek

Manajer proyek harus dapat mengidentifikasi risiko dan melakukan langkah mitigasi melalui tiga dimensi risiko:

```mermaid
flowchart LR
    DIM2["Dimensi Risiko\nProyek"] --> D1["Ukuran\nProyek"]
    DIM2 --> D2["Struktur\nProyek"]
    DIM2 --> D3["Pengalaman dengan\nTeknologi yang Digunakan"]
```

> Bagian ini melengkapi pembahasan **Manajemen Risiko** pada mata kuliah Proses Bisnis (STSI4206, Sesi 5) — di sini risiko proyek dipersempit secara spesifik ke konteks **pengembangan sistem informasi**.

---

## Ringkasan Keterkaitan Antar Konsep

```mermaid
flowchart TD
    KEPUTUSAN["A. Pembuatan Keputusan Bisnis\n(tipe keputusan, proses rasional,\nmodel, otomatisasi)"] --> BI["Intelegensi Bisnis\n(ekosistem, DSS, BSC)"]
    BI --> KEMBANGSI["B. Pengembangan Sistem Informasi\n(kriteria sukses, perubahan organisasi)"]
    KEMBANGSI --> SDLC2["SDLC\n(6 tahapan, kelebihan/kelemahan,\npenyempurnaan)"]
    SDLC2 --> PROYEK2["Proyek & Manajemen Proyek\n(kategori, variabel keberhasilan,\ndimensi risiko)"]
```

Inti dari materi penutup ini: sistem informasi pada akhirnya ada untuk **mendukung pembuatan keputusan bisnis** yang lebih baik — dari keputusan terstruktur yang dapat diotomatisasi hingga keputusan strategis yang didukung intelegensi bisnis. Namun, sistem informasi itu sendiri **harus dibangun melalui proses pengembangan yang terencana** (SDLC dan metodologi penyempurnaannya) serta dikelola sebagai sebuah **proyek** dengan kriteria keberhasilan, variabel, dan risiko yang jelas — menutup seluruh rangkaian pembahasan mata kuliah ini, dari konsep dasar sistem informasi hingga bagaimana sistem tersebut benar-benar diwujudkan dan dimanfaatkan dalam organisasi.
