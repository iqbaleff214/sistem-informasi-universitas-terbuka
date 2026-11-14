# Pertemuan 02: Manajemen Pengetahuan & Implikasi Ekonomi Digital dalam E-Bisnis

* **Mata Kuliah:** E-Bisnis (`STSI4408` / `MSIM4409`)
* **Program Studi:** Sistem Informasi — Universitas Terbuka
* **Topik:** Manajemen Pengetahuan (KM), Model SECI, KMS, Pengelolaan Aplikasi & Keterampilan, dan Ekonomi Digital

---

## Daftar Isi
1. [Konsep Manajemen E-Bisnis](#1-konsep-manajemen-e-bisnis)
2. [Model & Proses Manajemen Pengetahuan (Knowledge Management)](#2-model--proses-manajemen-pengetahuan-knowledge-management)
3. [Knowledge Management System (KMS)](#3-knowledge-management-system-kms)
4. [Pengelolaan Aplikasi E-Bisnis](#4-pengelolaan-aplikasi-e-bisnis)
5. [Pengelolaan Keterampilan SDM dalam E-Bisnis](#5-pengelolaan-keterampilan-sdm-dalam-e-bisnis)
6. [Implikasi TIK terhadap Ekonomi Digital & Ekonomi Informasi](#6-implikasi-tik-terhadap-ekonomi-digital--ekonomi-informasi)
7. [Referensi Resmi](#7-referensi-resmi)

---

## 1. Konsep Manajemen E-Bisnis

### Apa itu Manajemen E-Bisnis?
**Manajemen E-Bisnis** adalah proses perencanaan, pengorganisasian, pelaksanaan, dan pengendalian seluruh sumber daya digital perusahaan untuk mencapai tujuan bisnis secara elektronik.

### Fungsi Utama Manajemen E-Bisnis

```mermaid
flowchart TD
    A["<b>1. Perencanaan Strategis</b><br/>Menentukan arah pemanfaatan TIK selaras dengan tujuan jangka panjang"] --> B["<b>2. Pengorganisasian Sumber Daya</b><br/>Mengatur infrastruktur, data, aplikasi, dan SDM digital secara efisien"]
    B --> C["<b>3. Pelaksanaan Operasional</b><br/>Menjalankan proses bisnis elektronik harian sesuai standar"]
    C --> D["<b>4. Pengendalian & Evaluasi</b><br/>Memantau kinerja sistem dan perbaikan berkelanjutan"]

    style A fill:#2b6cb0,stroke:#1a365d,color:#ffffff
    style B fill:#2f855a,stroke:#22543d,color:#ffffff
    style C fill:#d69e2e,stroke:#744210,color:#ffffff
    style D fill:#805ad5,stroke:#44337a,color:#ffffff

```

---

## 2. Model & Proses Manajemen Pengetahuan (Knowledge Management)

### Explicit vs Tacit Knowledge

| Tipe Pengetahuan | Definisi | Contoh |
| --- | --- | --- |
| **Explicit Knowledge** | Pengetahuan yang telah terdokumentasi, terstruktur, dan mudah ditransfer antar individu. | Buku, dokumen, SOP, manual prosedur, basis data. |
| **Tacit Knowledge** | Pengetahuan berbasis pengalaman personal, intuisi, dan konteks yang sulit diartikulasikan. | Keterampilan praktis, *insight*, keahlian teknis, pengalaman kerja. |

### Model SECI (Nonaka & Takeuchi)

Model SECI menjelaskan transformasi siklis antara *Tacit* dan *Explicit Knowledge*:

```mermaid
quadrantChart
    title Dimensi Transformasi Pengetahuan (Model SECI)
    x-axis Tacit --> Explicit
    y-axis Tacit --> Explicit
    quadrant-1 "Externalization (Tacit to Explicit)"
    quadrant-2 "Socialization (Tacit to Tacit)"
    quadrant-3 "Internalization (Explicit to Tacit)"
    quadrant-4 "Combination (Explicit to Explicit)"
```

1. **Socialization (Tacit $\rightarrow$ Tacit):** Berbagi pengalaman langsung, observasi, dan magang.
2. **Externalization (Tacit $\rightarrow$ Explicit):** Memformulasikan pengalaman menjadi konsep, diagram, atau dokumen.
3. **Combination (Explicit $\rightarrow$ Explicit):** Menggabungkan dan mengintegrasikan berbagai dokumen/informasi eksplisit.
4. **Internalization (Explicit $\rightarrow$ Tacit):** Mengubah pengetahuan terdokumentasi menjadi pemahaman personal melalui pelatihan dan praktik.

### Siklus Proses Manajemen Pengetahuan

```mermaid
flowchart LR
    ID["1. Identifikasi"] --> ACQ["2. Akuisisi / Penciptaan"]
    ACQ --> DEV["3. Pengembangan / Penyimpanan"]
    DEV --> DIS["4. Distribusi / Berbagi"]
    DIS --> USE["5. Pemanfaatan / Penerapan"]
    USE -.->|Pengalaman Baru| ID

    style ID fill:#2b6cb0,color:#fff
    style ACQ fill:#2b6cb0,color:#fff
    style DEV fill:#2f855a,color:#fff
    style DIS fill:#d69e2e,color:#fff
    style USE fill:#805ad5,color:#fff

```

---

## 3. Knowledge Management System (KMS)

### Definisi KMS

**Knowledge Management System (KMS)** adalah sistem berbasis teknologi informasi yang mendukung proses penciptaan, penyimpanan, pengorganisasian, dan penyebaran pengetahuan di dalam organisasi.

### Komponen Utama & Arsitektur KMS

```mermaid
flowchart TB
    subgraph Pilar_KMS ["Komponen Utama KMS"]
        P["<b>People</b><br/>Budaya berbagi & pengguna"]
        PR["<b>Process</b><br/>Siklus pengelolaan data"]
        T["<b>Technology</b><br/>Infrastruktur KMS"]
    end

    subgraph Modul_Teknologi ["Fasilitas Teknologi KMS"]
        KB["Basis Pengetahuan (Repository)"]
        COL["Alat Kolaborasi (Forum/Wikis)"]
        PORT["Portal / Intranet Terpadu"]
        ANA["Fitur Pencarian & Analitik Cerdas"]
    end

    T --> Modul_Teknologi

    style Pilar_KMS fill:#ebf8ff,stroke:#3182ce
    style Modul_Teknologi fill:#f7fafc,stroke:#4a5568

```

---

## 4. Pengelolaan Aplikasi E-Bisnis

Pengelolaan aplikasi e-bisnis melibatkan pemilihan, pengintegrasian, dan pemeliharaan perangkat lunak enterprise untuk efisiensi operasional.

### Ekosistem Aplikasi Enterprise Mainstream

```mermaid
flowchart LR
    ERP["<b>ERP</b><br/>Enterprise Resource Planning<br/><i>(Integrasi Proses Internal)</i>"]
    CRM["<b>CRM</b><br/>Customer Relationship Mgmt.<br/><i>(Kelola Interaksi Pelanggan)</i>"]
    SCM["<b>SCM</b><br/>Supply Chain Management<br/><i>(Arus Barang & Pemasok)</i>"]
    EP["<b>E-Procurement</b><br/><i>(Pengadaan Barang Digital)</i>"]

    ERP <--> CRM
    ERP <--> SCM
    ERP <--> EP

    style ERP fill:#2b6cb0,color:#fff
    style CRM fill:#2f855a,color:#fff
    style SCM fill:#d69e2e,color:#fff
    style EP fill:#805ad5,color:#fff

```

### Strategi Pengelolaan Aplikasi

* **Integrasi System:** Menghubungkan berbagai modul aplikasi agar data mengalir secara *real-time*.
* **Keamanan & Skalabilitas:** Mengadopsi arsitektur *Cloud* (Private/Public/Hybrid) untuk mendukung pertumbuhan volume transaksi.

---

## 5. Pengelolaan Keterampilan SDM dalam E-Bisnis

Upaya pengembangan kompetensi sumber daya manusia (SDM) digital meliputi 5 pilar utama:

| No | Kompetensi Utama | Deskripsi & Strategi Pengembangan |
| --- | --- | --- |
| **1** | **Literasi Digital** | Kemampuan dasar mengoperasikan perangkat, aplikasi, dan platform digital modern. |
| **2** | **Analitis Data** | Kemampuan membaca, menganalisis, dan mengambil keputusan berbasis data (*data-driven decision*). |
| **3** | **Keamanan Informasi** | Pemahaman prinsip *cybersecurity* untuk menjaga privasi data perusahaan dan pelanggan. |
| **4** | **Manajemen Proyek Digital** | Mengelola eksekusi proyek berbasis teknologi informasi secara terstruktur dan agile. |
| **5** | **Komunikasi Daring** | Berkolaborasi secara efektif melalui perantara platform komunikasi virtual. |

---

## 6. Implikasi TIK terhadap Ekonomi Digital & Ekonomi Informasi

### Ekonomi Digital vs Ekonomi Informasi

* **Ekonomi Digital:** Aktivitas ekonomi yang berbasis pada teknologi digital sebagai penggerak utama nilai tambah, transaksi, dan konektivitas (termasuk AI, IoT, e-commerce, dan platform sharing).
* **Ekonomi Informasi:** Aktivitas ekonomi di mana informasi dinilai sebagai aset strategis utama (contoh: data pelanggan, analisis tren pasar, hak paten).

### Dampak TIK terhadap Lingkungan Kompetitif

```mermaid
flowchart TD
    TIK["Teknologi Informasi & Komunikasi (TIK)"] --> D1["1. Mengurangi Entry Barrier<br/><i>(Pesaing baru mudah masuk)</i>"]
    TIK --> D2["2. Transparansi & Persaingan<br/><i>(Harga & informasi lebih terbuka)</i>"]
    TIK --> D3["3. Inovasi Model Bisnis<br/><i>(Platform & Sharing Economy)</i>"]
    TIK --> D4["4. Efisiensi & Perluasan Pasar<br/><i>(Akses global tanpa batas)</i>"]

    style TIK fill:#2b6cb0,color:#fff
    style D1 fill:#edf2f7,stroke:#2b6cb0
    style D2 fill:#edf2f7,stroke:#2b6cb0
    style D3 fill:#edf2f7,stroke:#2b6cb0
    style D4 fill:#edf2f7,stroke:#2b6cb0

```

---

## 7. Referensi Resmi

1. **Buku Materi Pokok (BMP) UT:** *E-Business* (`MSIM4409` / `STSI4408`), Universitas Terbuka.
2. **Nonaka, I., & Takeuchi, H. (1995):** *The Knowledge-Creating Company*, Oxford University Press.
3. **Laudon, K. C., & Laudon, J. P. (2020):** *Management Information Systems: Managing the Digital Firm*, Pearson.
4. **Chaffey, D. (2015):** *Digital Business and E-Commerce Management*, Pearson.