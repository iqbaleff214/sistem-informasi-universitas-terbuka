# Sesi 5 — Efektivitas Sistem Tata Kelola TI

**MSIM4402 Tata Kelola Teknologi Informasi**
Program Studi Sistem Informasi — Universitas Terbuka

> Catatan: dokumen ini merupakan ekstraksi sekaligus elaborasi dari materi *Inisiasi 5 — Efektivitas Sistem Tata Kelola TI*. Sebagian besar konten asli tersimpan dalam SmartArt (diagram tersembunyi pada file presentasi) dan telah diekstrak serta digambarkan ulang dengan mermaid. Setiap poin dijelaskan lebih dalam dengan konteks dan contoh agar lebih mudah dipahami secara utuh.

---

## 1. Apa itu SOA?

**SOA** (*Service Oriented Architecture*) adalah pendekatan sistem TI di mana **logika bisnis aplikasi atau fungsi individu dimodulasi dan disajikan sebagai layanan** untuk aplikasi konsumen/klien.

> Konsep utama: layanan TI yang disediakan dan digabungkan **tidak bergantung pada implementasi aplikasi lainnya**.

```mermaid
flowchart LR
    LOGIKA["Logika Bisnis\nAplikasi/Fungsi Individu"] -->|dimodulasi & disajikan sebagai| LAYANAN["Layanan\n(Service)"]
    LAYANAN -->|dikonsumsi oleh| KLIEN["Aplikasi\nKonsumen/Klien"]
    LAYANAN -.->|"tidak bergantung pada\nimplementasi aplikasi lain\n(loose coupling)"| LAYANAN
```

Beberapa konsep SOA penting saat membahas proses SOA:

```mermaid
flowchart TD
    KONSEP["Konsep Penting\ndalam Proses SOA"] --> K1["Detail/Perincian\nKomponen SOA"]
    KONSEP --> K2["Antarmuka Layanan\nvs Konsep Implementasi"]
    KONSEP --> K3["Konsep SOA\nyang Fleksibel"]
```

> Kaitan dengan Sesi 4: SOA sudah disinggung pada Sesi 4 (**IT Governance dan SOA**) sebagai salah satu hal yang harus dipahami manajer dalam konteks komputasi awan. Sesi ini membahas SOA secara lebih mendalam sebagai topik tersendiri.

---

## 2. Arsitektur Sistem Tata Kelola TI

### Aplikasi SOA

SOA merupakan arsitektur TI yang bertujuan untuk mencapai **kemudahan interaksi** di antara bagian perangkat lunak. SOA memungkinkan **interoperabilitas** antara sistem TI dan bahasa pemrograman yang berbeda, memberikan dasar untuk **integrasi antara aplikasi pada platform yang berbeda** melalui hubungan komunikasi jaringan.

```mermaid
flowchart LR
    APP1["Aplikasi A\n(Platform/Bahasa X)"] <-->|interoperabilitas\nmelalui jaringan| SOA2["Lapisan SOA"]
    SOA2 <-->|interoperabilitas\nmelalui jaringan| APP2["Aplikasi B\n(Platform/Bahasa Y)"]
```

### Layanan Driven TI (*Service-Driven IT*)

**Layanan-*driven* TI** berorientasi pada layanan yang mendukung kebutuhan layanan bisnis. Dalam arsitektur sistem tata kelola TI, pendekatan layanan-*driven* mencakup:

```mermaid
flowchart TD
    SD["Layanan-Driven TI"] --> SD1["Struktur\nOrganisasi"]
    SD --> SD2["Proses\nBisnis"]
    SD --> SD3["Portofolio\nLayanan TI"]
    SD --> SD4["Service Level\nAgreement (SLA)"]
    SD --> SD5["Integrasi dengan\nKerangka Kerja (ITIL)"]
```

> Poin **integrasi dengan ITIL** ini menghubungkan kembali ke materi Sesi 3 — SOA dan ITIL bukan dua hal yang berdiri sendiri, melainkan **saling terintegrasi**: ITIL mengatur kualitas dan pengiriman layanan, sementara SOA mengatur bagaimana layanan tersebut diwujudkan secara teknis dalam arsitektur sistem.

---

## 3. Empat Dampak Penerapan SOA pada Tata Kelola TI

Terdapat empat poin utama yang harus diperhatikan oleh IT dan manajemen dalam memindahkan sistem IT ke dalam layanan berorientasi arsitektur (SOA):

```mermaid
flowchart TD
    SOAEFEK["Dampak Penerapan SOA"] --> E1["1. Tingkatkan\nVisibilitas Bisnis"]
    SOAEFEK --> E2["2. Implementasi SOA\nSecara Menyeluruh"]
    SOAEFEK --> E3["3. Meningkatkan\nEfisiensi Bisnis"]
    SOAEFEK --> E4["4. Meningkatkan Proses\nTata Kelola TI"]
```

### 3.1 Tingkatkan Visibilitas Bisnis

SOA umumnya mengintegrasikan sistem yang ada dan menggabungkan data/informasi pelanggan yang lebih **konsisten dan akurat**, termasuk:

```mermaid
flowchart LR
    VIS["Tingkatkan Visibilitas\nBisnis melalui SOA"] --> V1["Informasi Terkini untuk\nLayanan Pelanggan Lebih Baik"]
    VIS --> V2["Informasi Lintas Perusahaan\nuntuk Aktivitas Tertarget"]
    VIS --> V3["Informasi Konsisten, Akurat,\n& Komprehensif untuk\nPengambilan Keputusan"]
```

### 3.2 Implementasi SOA Secara Menyeluruh

SOA dapat membuat perangkat lunak yang terintegrasi dan infrastruktur untuk merespons kebutuhan bisnis dengan cepat:

```mermaid
flowchart LR
    IMPL["Implementasi SOA\nMenyeluruh"] --> I1["Pengiriman/Transmisi Antar Bagian\nyang Cepat (Kemampuan Bisnis Baru)"]
    IMPL --> I2["Mengurangi Dampak\nPerubahan Bisnis & Teknologi"]
    IMPL --> I3["Melindungi Investasi yang Ada\nSekaligus Menambah Fungsi Baru"]
```

### 3.3 Meningkatkan Efisiensi Bisnis

Proses bisnis lebih efisien dengan SOA melalui proses yang disederhanakan, diotomatiskan, serta pelacakan dan visibilitas yang lebih baik:

```mermaid
flowchart LR
    EFISIEN["Meningkatkan\nEfisiensi Bisnis"] --> EF1["Proses Bisnis Aman di Dalam\n& Luar Sistem TI (Sistem Keamanan Baik)"]
    EFISIEN --> EF2["Penghubung Data yang Terpisah\nuntuk Memastikan Integritas Data"]
```

### 3.4 Meningkatkan Proses Tata Kelola TI

> Karena SOA mengklasifikasikan dan mengatur semua TI dengan proses yang lebih baik untuk perusahaan, maka **keseluruhan tata kelola dan kontrol proses** bisa dilakukan dan dikendalikan lebih baik.

```mermaid
flowchart LR
    KLASIFIKASI["SOA Mengklasifikasikan\n& Mengatur TI"] --> KONTROL2["Tata Kelola & Kontrol Proses\nLebih Baik & Terkendali"]
```

---

## 4. Konsep SOA

Beberapa konsep SOA yang penting bagi profesional TI dan manajemen, yang akan diperoleh saat membahas proses SOA:

```mermaid
flowchart TD
    KSOA["Konsep SOA Penting"] --> KS1["1. Perincian\nKomponen SOA"]
    KSOA --> KS2["2. Antarmuka Layanan\nversus Konsep Implementasi"]
    KSOA --> KS3["3. Kontrak\nSOA"]
    KSOA --> KS4["4. Konsep SOA\nyang Fleksibel"]
```

---

## 5. Membangun Blueprint Implementasi SOA

> **Kunci SOA yang efektif** adalah dengan mengidentifikasi rencana yang ada, atau membangun layanan menggunakan bagian yang akan menentukan implementasi SOA yang dibutuhkan.

```mermaid
flowchart LR
    IDENT["Identifikasi Rencana\nyang Sudah Ada"] --> BLUEPRINT["Blueprint\nImplementasi SOA"]
    BANGUN["Membangun Layanan dari\nBagian yang Menentukan\nKebutuhan Implementasi"] --> BLUEPRINT
```

### Pemangku Kepentingan (*Stakeholder*) dalam SOA

Sebuah perusahaan yang menerapkan SOA harus mendefinisikan berbagai elemen layanan dan pemangku kepentingan layanan, termasuk alur kegiatan dan keputusan antara pemangku kepentingan yang terlibat dalam proses berikut:

```mermaid
flowchart LR
    PB["Pemilik\nBisnis"] <--> AS["Arsitektur\nSOA"]
    AS <--> PA["Pengembang\nAplikasi"]
    PA <--> MQ["Manajer\nQC"]
    MQ <--> PB
```

| Pemangku Kepentingan | Peran |
|---|---|
| **Pemilik Bisnis** | Menentukan kebutuhan bisnis yang harus dipenuhi oleh layanan. |
| **Arsitektur SOA** | Merancang struktur dan integrasi layanan secara teknis. |
| **Pengembang Aplikasi** | Membangun aplikasi/layanan sesuai dengan arsitektur yang dirancang. |
| **Manajer QC** (*Quality Control*) | Memastikan kualitas layanan yang dikembangkan memenuhi standar. |

---

## 6. Migrasi ke Lingkungan SOA: Perencanaan dan Kebijakan Baru

> Perusahaan **tidak pindah ke lingkungan TI SOA hanya dengan membeli paket perangkat lunak** dan melatih staf TI tentang penggunaannya. SOA lebih dari sekadar cara baru untuk mengatur sistem TI yang ada — ia membutuhkan **perencanaan rinci** untuk pindah ke lingkungan baru tersebut, serta **kebijakan dan prosedur TI baru**.

```mermaid
flowchart TD
    MITOS["Mitos: SOA = Beli Software\n+ Latih Staf"] -.->|salah, SOA membutuhkan| FAKTA["Fakta: Perencanaan Rinci +\nKebijakan & Prosedur TI Baru"]
```

Sebagian besar kebijakan SOA bertujuan memastikan bahwa **layanan berperilaku sebagaimana mestinya** sesuai ekspektasi konsumen, termasuk:

```mermaid
flowchart LR
    KEBIJAKAN["Kebijakan SOA\nuntuk Memenuhi Ekspektasi Konsumen"] --> SLA2["Service Level\nAgreement (SLA)"]
    KEBIJAKAN --> OTENTIKASI["Otentikasi\nPengguna"]
    KEBIJAKAN --> OTORISASI["Otorisasi\nLayanan"]
    KEBIJAKAN --> ENKRIPSI["Enkripsi\n(Bagian Keamanan yang Kuat)"]
```

### Risiko Migrasi ke Layanan Web (*Web Services*)

Banyak perusahaan saat ini telah mengubah satu atau beberapa aplikasi kunci menjadi **layanan Web** dengan pendekatan seperti SOA — mengubah file aplikasi yang ada ke dalam lingkungan berbasis Web dan bergantung pada Web.

```mermaid
flowchart TD
    MIGRASI["Migrasi Aplikasi Lama\nke Layanan Web (SOA)"] --> MANUAL["Cara Manual Lama &\nProses Persetujuan\n(memaksa orang membaca/patuhi aturan)"]
    MANUAL --> HAMBATAN["Ulasan Manual Menjadi\nHambatan (Bottleneck)"]
    HAMBATAN --> HINDAR["Orang Mendorong Diri\nMenghindari Kebijakan"]
    HINDAR --> GAGAL["Mengalahkan Misi Inti\nTata Kelola SOA"]
```

> Risiko ini penting untuk dipahami: tata kelola SOA yang **terlalu kaku/manual** dapat **menggagalkan dirinya sendiri** — alih-alih membuat layanan lebih teratur, prosedur yang membebani justru mendorong orang **menghindari** kebijakan tata kelola, sehingga misi inti tata kelola SOA (keteraturan dan kontrol) tidak tercapai.

---

## 7. Manajemen Konfigurasi TI (*IT Configuration Management*)

Seluruh perakitan komponen TI dikenal sebagai **konfigurasi TI perusahaan**. Sebagai elemen penting dari proses tata kelola TI, harus ada mekanisme untuk mengelola **kompatibilitas dan status komponen konfigurasi TI** ini, sehingga mereka dapat berhubungan dan berkomunikasi satu sama lain.

> **IEEE** mendefinisikan manajemen konfigurasi TI sebagai proses organisasi TI yang mengandung lima elemen:

```mermaid
flowchart LR
    MK["Manajemen Konfigurasi TI\n(Definisi IEEE)"] --> MK1["Identifikasi"]
    MK1 --> MK2["Control"]
    MK2 --> MK3["Status"]
    MK3 --> MK4["Audit"]
    MK4 --> MK5["Review"]
```

Untuk mencapai manajemen konfigurasi TI yang efektif, perusahaan dan fungsi TI-nya harus memiliki proses yang dapat:

```mermaid
flowchart TD
    EFEKTIF2["Manajemen Konfigurasi\nTI yang Efektif"] --> EF1["Mengidentifikasi Secara Unik Semua\nKomponen Perangkat Keras, Lunak,\n& Infrastruktur"]
    EFEKTIF2 --> EF2["Memiliki Kontrol untuk Melacak\nSemua Perubahan/Revisi Komponen"]
    EFEKTIF2 --> EF3["Memelihara Konfigurasi Sistem\nPelaporan Manajemen\n(fungsi TI, manajemen umum, keuangan)"]
    EFEKTIF2 --> EF4["Memahami Status Terkini\nSumber Daya TI Perusahaan"]
    EFEKTIF2 --> EF5["Memantau & Mengelola Status\nSumber Daya TI untuk Memastikan\nTerkini & Hemat Biaya"]
```

### Inventaris TI dan Kebijakan Produk TI

Setelah diimplementasikan secara efektif, **inventaris** juga harus memberikan informasi kepada manajemen dan fungsi area TI untuk penyelidikan lebih lanjut di area kebijakan produk TI, mencakup:

```mermaid
flowchart TD
    INV["Inventaris TI\nMencakup"] --> INV1["Platform Komputasi Fisik\n(termasuk desktop)"]
    INV --> INV2["Perangkat & Peralatan\nJaringan"]
    INV --> INV3["Semua Aplikasi &\nSistem Operasi"]
    INV --> INV4["PBX & Perangkat Keras/Lunak\nTelekomunikasi Terkait"]
    INV --> INV5["Layanan Bisnis & Dokumentasi\nuntuk Aplikasi/Sistem"]
    INV --> INV6["Kebijakan & Proses\nStandar"]
```

Proyek manajemen konfigurasi TI harus menyertakan **empat elemen**:

```mermaid
flowchart LR
    PROYEK2["Proyek Manajemen\nKonfigurasi TI"] --> PR1["1. Tentukan Elemen\nKonfigurasi TI"]
    PR1 --> PR2["2. Membangun Hubungan\nKonfigurasi TI"]
    PR2 --> PR3["3. Mengoptimalkan Proses\nKonfigurasi TI"]
    PR3 --> PR4["4. Mengembangkan Proses\nDokumentasi Konsisten"]
```

### CMDB (*Configuration Management Database*)

**CMDB** harus terdiri dari elemen/komponen berikut:

```mermaid
flowchart TD
    CMDB2["CMDB\n(Configuration Management Database)"] --> C1["Administrasi\nPengguna CMDB"]
    CMDB2 --> C2["Alat Keamanan &\nAkses Pengguna CMDB"]
    CMDB2 --> C3["Fasilitas Manajemen\nKonfigurasi Database"]
    CMDB2 --> C4["Manajemen Data &\nRepositori Database"]
    CMDB2 --> C5["Kontrol Keamanan &\nPerlindungan Data"]
```

> Manajemen konfigurasi TI dan CMDB ini melengkapi konsep **Virtualisasi TI** (Sesi 4) — di lingkungan virtual, komponen TI dapat dibuat dan dihapus dengan sangat mudah, sehingga **manajemen konfigurasi yang akurat dan real-time** menjadi semakin krusial untuk menjaga visibilitas terhadap seluruh sumber daya TI organisasi.

---

## 8. Kontrol Pembangunan Sistem dan Implementasi ERP

### Kontrol Pembangunan Sistem yang Baik dan Umum

Perusahaan harus menggunakan kendali tata kelola TI dan prosedur untuk memastikan bahwa **teknik pembangunan sistem yang tepat** digunakan selama fase desain dan pengembangan aplikasi baru TI dalam metodologi terstruktur:

```mermaid
flowchart TD
    KONTROL3["Kontrol Pembangunan\nSistem yang Baik & Umum"] --> KP1["Aplikasi Sesuai, Fleksibel,\n& Memenuhi Kebutuhan Bisnis"]
    KONTROL3 --> KP2["Menetapkan Aturan\nTI Perusahaan"]
    KONTROL3 --> KP3["Menerapkan Pelatihan Awal\n& Berkelanjutan untuk Sistem TI"]
    KONTROL3 --> KP4["Menetapkan Standar Fungsi TI\nuntuk Aplikasi yang Dikembangkan"]
```

### Pertimbangan Tata Kelola TI saat Menerapkan ERP

Dari perspektif tata kelola TI, ada beberapa poin penting yang perlu dipertimbangkan kapan menerapkan **database ERP** untuk suatu perusahaan:

```mermaid
flowchart LR
    ERP3["Implementasi\nERP"] --> E1["1. Mendefinisikan Tujuan\n& Persyaratan ERP"]
    E1 --> E2["2. Membangun Tim Proyek\nLintas Fungsi"]
    E2 --> E3["3. Mengenali Biaya & Waktu\nyang Dibutuhkan"]
    E3 --> E4["4. Memilih Produk\nPerangkat Lunak ERP"]
    E4 --> E5["5. Menerapkan Teknik\nManajemen Proyek Formal"]
```

> Lima langkah implementasi ERP ini melengkapi pembahasan **Implementasi Sistem Informasi dalam Bisnis** (STSI4207, Inisiasi 7) yang sudah membahas arsitektur umum ERP — di sini fokusnya pada **tata kelola proses implementasinya**, bukan hanya arsitektur akhirnya.

---

## Ringkasan Keterkaitan Antar Konsep

```mermaid
flowchart TD
    DEFSOA["Apa itu SOA?\n(layanan independen dari implementasi)"] --> ARSITEKTUR["Arsitektur Sistem Tata Kelola TI\n(interoperabilitas, layanan-driven)"]
    ARSITEKTUR --> DAMPAK2["4 Dampak SOA\n(visibilitas, implementasi, efisiensi, tata kelola)"]
    DAMPAK2 --> KONSEPSOA["Konsep & Blueprint SOA\n(stakeholder, perencanaan, kebijakan baru)"]
    KONSEPSOA --> RISIKOMIGRASI["Risiko Migrasi ke Web Services\n(governance gagal jika terlalu kaku)"]
    RISIKOMIGRASI --> MK2["Manajemen Konfigurasi TI\n(IEEE: identifikasi-control-status-audit-review)"]
    MK2 --> CMDB3["Inventaris TI & CMDB"]
    CMDB3 --> KONTROLSISTEM["Kontrol Pembangunan Sistem\n& Implementasi ERP"]
```

Inti dari sesi ini: **SOA** menawarkan fleksibilitas besar bagi organisasi melalui layanan yang independen dan dapat dikombinasikan kembali, tetapi keberhasilannya **sangat bergantung pada tata kelola yang tepat** — mulai dari perencanaan blueprint, kebijakan baru (SLA, otentikasi, otorisasi, enkripsi), hingga manajemen konfigurasi TI yang akurat (didukung CMDB). Tata kelola SOA yang terlalu kaku justru dapat **menggagalkan dirinya sendiri** dengan mendorong staf menghindari kebijakan, sehingga keseimbangan antara **kontrol yang cukup** dan **kemudahan kepatuhan** menjadi kunci efektivitas sistem tata kelola TI secara keseluruhan — termasuk saat organisasi menerapkan sistem skala besar seperti ERP.

---

*Terima kasih*
