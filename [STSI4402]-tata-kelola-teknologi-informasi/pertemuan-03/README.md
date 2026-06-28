# Sesi 3 — COBIT & IT Service Management

**MSIM4402 Tata Kelola Teknologi Informasi**
Program Studi Sistem Informasi — Universitas Terbuka

> Catatan: dokumen ini merupakan ekstraksi sekaligus elaborasi dari materi *Inisiasi 3 — COBIT & IT Service Management*. Diagram pada slide asli (termasuk SmartArt) digambarkan ulang dengan mermaid, dan setiap poin dijelaskan lebih dalam dengan konteks dan contoh agar lebih mudah dipahami secara utuh.

---

## 1. COBIT Menjadi Solusi

**COBIT** (*Control Objectives for Information and Related Technology*) adalah *framework* tata kelola dan manajemen teknologi informasi yang dikembangkan oleh **ISACA**. **COBIT 5** dirilis pada tahun **2012** dan merupakan versi penyempurnaan dari **COBIT 4.1**.

Manajer senior dan profesional teknologi informasi telah menyatakan keprihatinannya dengan menggunakan kerangka kerja pengendalian internal **COSO** (lihat Sesi 2) dalam dunia berorientasi TI saat ini. Perhatiannya adalah bahwa pedoman pengendalian internal COSO yang dipublikasikan **tidak memberikan cukup penekanan pada alat dan proses TI**. COBIT menjadi **solusi dari kelemahan COSO** tersebut.

```mermaid
flowchart LR
    COSO2["COSO\n(Sesi 2)\nPengendalian internal umum,\nkurang penekanan pada TI"] -->|kelemahan diatasi oleh| COBIT2["COBIT\n(Framework tata kelola &\nmanajemen TI oleh ISACA)"]
```

Meskipun awalnya diluncurkan sebagai panduan untuk membantu profesional **auditor TI internal dan eksternal** yang meninjau kontrol internal terkait TI, COBIT saat ini telah berkembang menjadi alat yang berguna untuk **menilai tata kelola TI** dan **mengevaluasi semua kontrol internal** di seluruh perusahaan.

```mermaid
flowchart LR
    AWAL["Awal: Panduan Audit TI\n(internal & eksternal)"] --> SEKARANG["Saat Ini: Alat Menilai\nTata Kelola TI &\nMengevaluasi Kontrol Internal\ndi Seluruh Perusahaan"]
```

> Kaitan dengan Sesi 2: COBIT **tidak menggantikan** COSO secara total, melainkan **melengkapi** COSO dengan penekanan yang lebih kuat pada konteks TI — sehingga organisasi modern umumnya menggunakan **kombinasi** COSO (pengendalian internal umum) dan COBIT (tata kelola & manajemen TI spesifik).

### Contoh Penerapan COBIT 5

Berikut rekonstruksi contoh siklus penerapan COBIT 5 dari materi asli:

```mermaid
flowchart LR
    A1["Audit SI"] --> A2["Penilaian Kapabilitas\nProses TI"]
    A2 --> A3["Pengembangan Kebijakan TI\nyang Terukur"]
    A3 --> A4["Evaluasi Risiko &\nPengendalian Internal"]
    A4 -.->|siklus berkelanjutan| A1
```

| Tahap | Penjelasan |
|---|---|
| **Audit SI** | Memeriksa sistem informasi untuk menilai kepatuhan dan efektivitas kontrol yang ada. |
| **Penilaian Kapabilitas Proses TI** | Mengevaluasi sejauh mana proses TI organisasi sudah matang dan mampu memberikan hasil yang konsisten. |
| **Pengembangan Kebijakan TI yang Terukur** | Menyusun kebijakan TI yang dilengkapi dengan metrik/indikator yang dapat diukur keberhasilannya. |
| **Evaluasi Risiko dan Pengendalian Internal** | Menilai risiko yang dihadapi serta efektivitas pengendalian internal yang sudah diterapkan. |

---

## 2. Manfaat Penerapan Kerangka Kerja COBIT

Melalui penerapan pedoman kerangka kerja COBIT yang efektif, perusahaan harus mencapai:

```mermaid
flowchart TD
    PENERAPAN["Penerapan Kerangka\nKerja COBIT yang Efektif"] --> M1["Peningkatan & Penciptaan\nNilai melalui TI Perusahaan"]
    PENERAPAN --> M2["Kepuasan Pengguna Bisnis dengan\nKeterlibatan & Layanan TI"]
    PENERAPAN --> M3["Kepatuhan terhadap Hukum,\nPeraturan, & Kebijakan Relevan"]
```

Manfaat-manfaat ini pada dasarnya merupakan **wujud nyata dari lima elemen kunci** tata kelola TI berikut, yang akan dibahas lebih rinci sebagai *5 Prinsip COBIT* pada bagian 3:

```mermaid
flowchart LR
    E1["Kerangka Kerja TI\nyang Terintegrasi"] --> E2["Penggerak Nilai\nPemangku Kepentingan"]
    E2 --> E3["Sumber Daya Berfokus\npada Konteks Bisnis"]
    E3 --> E4["Manajemen\nRisiko"]
    E4 --> E5["Pengukuran\nKinerja"]
```

---

## 3. Lima Prinsip COBIT

Lima prinsip COBIT (atau area penekanan) menentukan elemen kerangka kerja COBIT dan memberikan definisi untuk elemen kunci **tata kelola TI**. Kerangka kerja COBIT adalah alat yang efektif untuk mendokumentasikan TI dan semua kontrol internal lainnya, dan digunakan untuk membantu proses tata kelola TI dalam **manajemen, perusahaan, dan audit internal**.

### Diagram Lima Prinsip COBIT (Moeller, 2013)

Berikut rekonstruksi diagram "bunga" lima prinsip COBIT, dengan **COBIT IT Governance Principles** sebagai inti yang dikelilingi oleh kelima prinsipnya:

```mermaid
flowchart TD
    CORE["COBIT\nIT Governance\nPrinciples"] --> P1["1. Need for an\nIntegrated IT Framework\n(Membangun Kerangka Arsitektur\nIT yang Terintegrasi)"]
    CORE --> P2["2. Stakeholder\nValue Drivers\n(Driver Nilai\nPemangku Kepentingan)"]
    CORE --> P3["3. Focus on\nBusiness Context\n(Fokus pada\nKonteks Bisnis)"]
    CORE --> P4["4. Coabler-based\nProcesses\n(Tata Kelola & Pengendali\nManajemen Risiko)"]
    CORE --> P5["5. Governance &\nManagement Structures\n(Struktur Pengukuran Kinerja\nTata Kelola & Manajemen)"]
```

| Prinsip | Penjelasan |
|---|---|
| **1. Membangun Kerangka Arsitektur IT yang Terintegrasi** | Memastikan seluruh elemen TI (proses, struktur, teknologi) terhubung dalam satu kerangka kerja yang konsisten, bukan terpisah-pisah. |
| **2. Driver Nilai Pemangku Kepentingan** | Tata kelola TI harus didorong oleh kebutuhan dan harapan nilai dari para pemangku kepentingan (*stakeholders*), bukan semata-mata kebutuhan teknis. |
| **3. Fokus pada Konteks Bisnis** | Sumber daya dan keputusan TI harus selalu mempertimbangkan konteks bisnis tempat TI tersebut beroperasi. |
| **4. Tata Kelola dan Pengendali Manajemen Risiko** | Proses-proses TI (*coabler-based processes*) harus terintegrasi dengan mekanisme tata kelola dan pengendalian risiko. |
| **5. Struktur Pengukuran Kinerja Tata Kelola dan Manajemen** | Diperlukan struktur yang jelas untuk mengukur kinerja, baik dari sisi tata kelola maupun manajemen TI. |

> Diagram berbentuk "bunga" ini secara visual menekankan bahwa **kelima prinsip ini saling melengkapi** dan semuanya berpusat pada satu inti yang sama: **prinsip tata kelola TI COBIT** — tidak ada satu prinsip yang berdiri sendiri tanpa keempat prinsip lainnya.

---

## 4. Tujuan COBIT 5

```mermaid
flowchart TD
    TUJUAN4["Tujuan COBIT 5"] --> TC1["Menyelaraskan TI dengan\nKebutuhan Bisnis"]
    TUJUAN4 --> TC2["Memastikan Manfaat Maksimal\ndari Investasi TI"]
    TUJUAN4 --> TC3["Mengelola Risiko Terkait\nTI Secara Efektif"]
    TUJUAN4 --> TC4["Meningkatkan Efisiensi &\nEfektivitas Proses Bisnis\nBerbasis TI"]
    TUJUAN4 --> TC5["Memberikan Kerangka Kerja Tata\nKelola & Manajemen TI yang\nTerintegrasi & Menyeluruh"]
```

> Tujuan COBIT 5 ini selaras dan saling memperkuat dengan **Tujuan Tata Kelola** yang sudah dibahas pada Sesi 2 — keduanya menekankan **penyelarasan TI dengan bisnis**, **optimalisasi nilai investasi**, dan **manajemen risiko yang efektif**, namun COBIT memberikan kerangka kerja yang lebih **spesifik dan operasional** untuk mencapainya.

---

## 5. IT Service Management (ITSM)

> **ITSM** (*IT Service Management*) adalah keseluruhan disiplin atau proses untuk mengelola sistem TI yang **berpusat pada perspektif pelanggan** tentang kontribusi TI terhadap bisnis.

```mermaid
flowchart LR
    SISTEM2["Sistem TI"] -->|dikelola melalui| ITSM2["ITSM\n(disiplin/proses\nberpusat pada perspektif\npelanggan)"]
    ITSM2 --> KONTRIBUSI["Kontribusi TI\nterhadap Bisnis"]
```

### COBIT vs ITIL

```mermaid
flowchart LR
    ITSM3["IT Service Management"] --> COBIT3["COBIT\n(fokus pada kerangka\ntata kelola TI)"]
    ITSM3 --> ITIL2["ITIL\n(kerangka kerja tata kelola TI,\nfokus pengukuran berkelanjutan\n& peningkatan kualitas layanan)"]
```

> **COBIT** fokus pada kerangka **tata kelola TI**, sementara **ITIL** menyediakan kerangka kerja untuk **tata kelola TI** dan berfokus pada **pengukuran berkelanjutan** dan **peningkatan kualitas layanan TI** yang diberikan, baik dari perspektif bisnis maupun pelanggan.

---

## 6. ITIL (*Information Technology Infrastructure Library*)

**ITIL** adalah kumpulan **praktik terbaik TI** yang independen dan diperbaharui secara berkala, yang pertama kali diakui secara luas oleh operasi TI di **Inggris**.

### Cakupan ITIL

Praktik terbaik penyampaian layanan ITIL mencakup apa yang sering disebut **infrastruktur TI proses pendukung** yang memungkinkan aplikasi TI berfungsi dan menyampaikan hasilnya kepada pengguna sistem.

> **Masalah umum:** terlalu sering, manajemen perusahaan memusatkan perhatiannya pada sisi **pengembangan aplikasi** proses TI dan **mengabaikan proses penyampaian layanan pendukung** yang penting.

```mermaid
flowchart TD
    DEV["Pengembangan Aplikasi\n(sering jadi fokus utama)"] -.->|tanpa dukungan proses\nberikut, nilai aplikasi rendah| GAP["?"]
    GAP --> M1["Manajemen Masalah\n& Insiden"]
    GAP --> M2["Proses Kapasitas\n& Ketersediaan"]
    M1 --> NILAI["Aplikasi Benar-benar\nBernilai bagi Pengguna"]
    M2 --> NILAI
```

> **Contoh dari materi asli:** sebuah perusahaan dapat melakukan upaya besar-besaran untuk membangun dan menerapkan **sistem peramalan anggaran** yang baru, tetapi penerapan tersebut akan **bernilai kecil** kecuali ada proses yang baik — seperti **manajemen masalah dan insiden** (agar pengguna dapat melaporkan kesulitan sistem) dan proses **kapasitas dan ketersediaan** yang baik (agar aplikasi baru berjalan seperti yang diharapkan).
>
> Proses-proses ITIL ini semua adalah bagian dari **infrastruktur TI**, dan aplikasi yang dirancang dengan baik dan terkontrol dengan baik **hanya memiliki sedikit nilai** bagi penggunanya tanpa dukungan layanan dan proses pengiriman yang kuat.

### Manfaat ITIL

```mermaid
flowchart TD
    MANFAATITIL["Manfaat ITIL"] --> B1["Meningkatkan Kepuasan\nPengguna & Pelanggan"]
    MANFAATITIL --> B2["Peningkatan Ketersediaan Layanan\n(potensi tingkatkan keuntungan\n& pendapatan bisnis)"]
    MANFAATITIL --> B3["Penghematan Finansial\n(kurangi pengerjaan ulang,\nwaktu hilang, sumber daya lebih baik)"]
    MANFAATITIL --> B4["Peningkatan Waktu ke Pasar\n(time-to-market) untuk\nProduk & Layanan Baru"]
    MANFAATITIL --> B5["Pengambilan Keputusan Lebih Baik\n& Risiko yang Dioptimalkan"]
```

| Manfaat | Penjelasan |
|---|---|
| **Kepuasan Pengguna & Pelanggan** | Meningkatkan kepuasan pengguna dan pelanggan dengan layanan TI yang diberikan. |
| **Peningkatan Ketersediaan Layanan** | Berpotensi langsung meningkatkan keuntungan dan pendapatan bisnis. |
| **Penghematan Finansial** | Dari pengurangan pengerjaan ulang, waktu yang hilang, serta pengelolaan dan penggunaan sumber daya yang lebih baik. |
| **Peningkatan Waktu ke Pasar** | Untuk aspek TI dari produk dan layanan baru. |
| **Pengambilan Keputusan & Risiko** | Pengambilan keputusan yang lebih baik dan risiko yang dioptimalkan untuk semua proses terkait TI. |

> Manfaat **penghematan finansial** dan **risiko yang dioptimalkan** ini melengkapi konsep **manajemen risiko TI** (Sesi 1, bagian 7) — ITIL menunjukkan bahwa pengelolaan layanan TI yang baik bukan hanya soal teknis, tetapi juga berdampak langsung pada **kinerja finansial** organisasi.

---

## Ringkasan Keterkaitan Antar Konsep

```mermaid
flowchart TD
    COSOLEMAH["Kelemahan COSO\n(kurang fokus pada TI)"] --> COBIT4["COBIT\n(framework tata kelola &\nmanajemen TI oleh ISACA)"]
    COBIT4 --> PRINSIP["5 Prinsip COBIT\n(kerangka terintegrasi, nilai stakeholder,\nkonteks bisnis, manajemen risiko, pengukuran kinerja)"]
    PRINSIP --> TUJUANCOBIT["Tujuan COBIT 5\n(selaraskan TI-bisnis, manfaat investasi,\nkelola risiko, efisiensi, kerangka menyeluruh)"]
    TUJUANCOBIT --> ITSM4["IT Service Management (ITSM)\n(berpusat perspektif pelanggan)"]
    ITSM4 --> PERBANDINGAN["COBIT (tata kelola)\nvs ITIL (kualitas layanan)"]
    PERBANDINGAN --> ITILDETAIL["ITIL: Praktik Terbaik TI\n(infrastruktur proses pendukung,\nmanfaat finansial & kepuasan pelanggan)"]
```

Inti dari sesi ini: **COBIT** lahir sebagai jawaban atas kelemahan COSO yang kurang menekankan aspek TI, menyediakan **lima prinsip** dan **kerangka tata kelola TI** yang menyeluruh. Sementara itu, **ITSM dan ITIL** melengkapi COBIT dari sisi **operasional layanan** — menekankan bahwa pengembangan aplikasi TI yang canggih sekalipun **tidak akan bernilai banyak** tanpa dukungan proses penyampaian layanan yang kuat (manajemen insiden, kapasitas, ketersediaan). Kombinasi COBIT (tata kelola) dan ITIL (manajemen layanan) inilah yang membentuk ekosistem tata kelola TI yang utuh — dari level kebijakan strategis hingga level operasional layanan harian.

---

*Terima kasih*
