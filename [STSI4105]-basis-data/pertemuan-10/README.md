# Pertemuan 10 — Konsep Basis Data Terdistribusi

**Mata Kuliah:** STSI4105 / Basis Data  
**Program Studi:** S1 Sistem Informasi — Universitas Terbuka  
**Topik:** Distributed Database — Konsep, Opsi, dan Strategi

---

## Daftar Isi

1. [Apa Itu Basis Data Terdistribusi?](#1-apa-itu-basis-data-terdistribusi)
2. [Alasan Penerapan](#2-alasan-penerapan)
3. [Opsi Distribusi Data](#3-opsi-distribusi-data)
4. [Strategi Basis Data Terdistribusi](#4-strategi-basis-data-terdistribusi)
5. [Perbandingan Terpusat vs Terdistribusi](#5-perbandingan-terpusat-vs-terdistribusi)
6. [CAP Theorem](#6-cap-theorem)
7. [Contoh Penerapan Nyata](#7-contoh-penerapan-nyata)
8. [Ringkasan](#8-ringkasan)

---

## 1. Apa Itu Basis Data Terdistribusi?

> **Basis data terdistribusi** adalah sebuah basis data tunggal yang tersebar secara fisik di seluruh komputer di beberapa lokasi yang dihubungkan oleh jaringan komunikasi data.

### Analogi: Perpustakaan dengan Banyak Cabang

Bayangkan sebuah kota besar memiliki **satu sistem perpustakaan** dengan 5 cabang di berbagai kecamatan. Meski buku-buku tersebar di 5 lokasi berbeda, katalog pencarian tetap satu — pengguna bisa mencari buku di manapun dan sistem tahu buku itu ada di cabang mana.

Itulah esensi basis data terdistribusi: **satu logika, banyak lokasi fisik**.

```
┌─────────────────────────────────────────────────────┐
│              SATU BASIS DATA LOGIS                   │
│                                                     │
│   ┌──────────┐    Jaringan    ┌──────────────────┐  │
│   │ Server A │◄──────────────►│    Server B      │  │
│   │ (Jakarta)│                │   (Surabaya)     │  │
│   └──────────┘                └──────────────────┘  │
│        │                              │             │
│        │           ┌──────────┐       │             │
│        └──────────►│ Server C │◄──────┘             │
│                    │ (Medan)  │                     │
│                    └──────────┘                     │
└─────────────────────────────────────────────────────┘
```

### Terpusat vs Terdistribusi

```mermaid
flowchart LR
    subgraph Terpusat["🏢 Basis Data Terpusat"]
        direction TB
        CS[("Server Pusat\nSatu Lokasi")]
        U1[User Jakarta] --> CS
        U2[User Surabaya] --> CS
        U3[User Medan] --> CS
    end

    subgraph Distribusi["🌐 Basis Data Terdistribusi"]
        direction TB
        SA[("Server A\nJakarta")]
        SB[("Server B\nSurabaya")]
        SC[("Server C\nMedan")]
        SA <-->|Sinkronisasi| SB
        SB <-->|Sinkronisasi| SC
        SA <-->|Sinkronisasi| SC
        UA[User Jakarta] --> SA
        UB[User Surabaya] --> SB
        UC[User Medan] --> SC
    end
```

---

## 2. Alasan Penerapan

Ada 6 alasan utama mengapa organisasi memilih basis data terdistribusi:

```mermaid
flowchart TD
    BDT["🌐 Basis Data\nTerdistribusi"]

    BDT --> A["1️⃣ Unit Bisnis\nyang Terdistribusi"]
    BDT --> B["2️⃣ Berbagi Data"]
    BDT --> C["3️⃣ Biaya & Keandalan\nKomunikasi Data"]
    BDT --> D["4️⃣ Aplikasi dari Beberapa\nVendor / Pengembang"]
    BDT --> E["5️⃣ Database Recovery"]
    BDT --> F["6️⃣ Sinkronisasi Data"]

    style BDT fill:#1565C0,color:#fff
    style A fill:#1976D2,color:#fff
    style B fill:#1976D2,color:#fff
    style C fill:#1976D2,color:#fff
    style D fill:#1976D2,color:#fff
    style E fill:#1976D2,color:#fff
    style F fill:#1976D2,color:#fff
```

### Penjelasan Setiap Alasan

| # | Alasan | Penjelasan | Contoh |
|---|--------|-----------|--------|
| 1 | **Unit Bisnis yang Terdistribusi** | Ketika perusahaan memiliki kantor/cabang di banyak kota, menyimpan data dekat lokasi penggunaan lebih efisien | Perusahaan retail nasional dengan gudang di 10 kota |
| 2 | **Berbagi Data** | Departemen/divisi yang berbeda perlu mengakses data yang sama secara bersamaan | HRD dan Keuangan perlu data gaji karyawan secara real-time |
| 3 | **Biaya & Keandalan Komunikasi** | Menyimpan data secara lokal mengurangi biaya transmisi dan menghindari bottleneck jaringan | Data transaksi toko diolah lokal, ringkasan dikirim ke pusat |
| 4 | **Multi-Vendor Application** | Aplikasi dari berbagai vendor dapat mengakses data dari sistem yang berbeda-beda | ERP SAP + CRM Salesforce + aplikasi custom terintegrasi |
| 5 | **Database Recovery** | Jika satu server rusak, data masih tersedia di server lain — high availability | Satu server crash → server lain otomatis mengambil alih |
| 6 | **Sinkronisasi Data** | Perubahan data di satu lokasi secara otomatis diperbarui ke lokasi lain | Update harga produk di HQ langsung terrefleksi di semua cabang |

---

## 3. Opsi Distribusi Data

Ada 4 teknik utama dalam mendistribusikan data:

### 3.1 Replikasi Data (Data Replication)

> Data yang **sama disalin sepenuhnya** ke beberapa server di lokasi berbeda.

```mermaid
flowchart LR
    Master[("🗄️ Server Master\nData Lengkap")]

    Master -->|"Replikasi\n(salinan penuh)"| R1[("📋 Replica 1\nData Lengkap")]
    Master -->|"Replikasi\n(salinan penuh)"| R2[("📋 Replica 2\nData Lengkap")]
    Master -->|"Replikasi\n(salinan penuh)"| R3[("📋 Replica 3\nData Lengkap")]

    R1 --> UA["👤 User Cabang A"]
    R2 --> UB["👤 User Cabang B"]
    R3 --> UC["👤 User Cabang C"]

    style Master fill:#2E7D32,color:#fff
    style R1 fill:#388E3C,color:#fff
    style R2 fill:#388E3C,color:#fff
    style R3 fill:#388E3C,color:#fff
```

**Keuntungan:**
- Query cepat — data ada secara lokal
- Toleran terhadap kegagalan server
- Tidak ada single point of failure

**Kerugian:**
- Sinkronisasi bisa kompleks
- Memerlukan storage lebih besar
- Update harus dipropagasi ke semua replika

---

### 3.2 Partisi Horizontal (Horizontal Partitioning)

> Tabel dipecah berdasarkan **baris (row)** — tiap server menyimpan sebagian baris data.

```mermaid
flowchart TD
    T["📊 Tabel Pelanggan\n(1.000.000 baris)"]

    T -->|"Baris 1-333.333\n(Region Barat)"| S1[("🗄️ Server 1\nJakarta")]
    T -->|"Baris 333.334-666.666\n(Region Tengah)"| S2[("🗄️ Server 2\nSurabaya")]
    T -->|"Baris 666.667-1.000.000\n(Region Timur)"| S3[("🗄️ Server 3\nMakassar")]

    style T fill:#6A1B9A,color:#fff
    style S1 fill:#7B1FA2,color:#fff
    style S2 fill:#7B1FA2,color:#fff
    style S3 fill:#7B1FA2,color:#fff
```

**Contoh nyata:**

| Server | Lokasi | Data yang Disimpan |
|--------|--------|-------------------|
| Server 1 | Jakarta | Pelanggan dengan kode_wilayah = 'BARAT' |
| Server 2 | Surabaya | Pelanggan dengan kode_wilayah = 'TENGAH' |
| Server 3 | Makassar | Pelanggan dengan kode_wilayah = 'TIMUR' |

**Keuntungan:**
- Query lokal sangat cepat (sebagian besar query bersifat regional)
- Tiap server menyimpan lebih sedikit data
- Mudah ditambah node baru

**Kerugian:**
- Query lintas server (cross-partition join) lambat
- Distribusi beban harus seimbang

---

### 3.3 Partisi Vertikal (Vertical Partitioning)

> Tabel dipecah berdasarkan **kolom (column)** — tiap server menyimpan kolom-kolom tertentu.

```mermaid
flowchart TD
    T["📊 Tabel Karyawan\n(id, nama, alamat, gaji, jabatan, foto_ktp, catatan_medis)"]

    T -->|"Kolom Umum\n(id, nama, alamat, jabatan)"| S1[("🗄️ Server HR\nData Non-Sensitif")]
    T -->|"Kolom Keuangan\n(id, gaji, tunjangan)"| S2[("🗄️ Server Keuangan\nAkses Terbatas")]
    T -->|"Kolom Sensitif\n(id, foto_ktp, catatan_medis)"| S3[("🗄️ Server Medis\nSangat Terbatas")]

    style T fill:#B71C1C,color:#fff
    style S1 fill:#C62828,color:#fff
    style S2 fill:#C62828,color:#fff
    style S3 fill:#C62828,color:#fff
```

**Keuntungan:**
- Kontrol akses lebih granular (data sensitif terisolasi)
- Query yang hanya butuh beberapa kolom lebih efisien
- Cocok untuk kepatuhan regulasi (GDPR, dll.)

**Kerugian:**
- Butuh JOIN lintas server untuk rekonstruksi baris lengkap
- Konsistensi lebih kompleks

---

### 3.4 Kombinasi (Combinations)

> **Menggabungkan** replikasi dan partisi untuk mendapatkan manfaat keduanya.

```mermaid
flowchart TD
    Master["📊 Data Master Pusat"]

    Master -->|Partisi Horizontal| P1["Partisi Barat\n(baris Region Barat)"]
    Master -->|Partisi Horizontal| P2["Partisi Timur\n(baris Region Timur)"]

    P1 -->|Replikasi| R1A[("🗄️ Server A1\nJakarta")]
    P1 -->|Replikasi| R1B[("🗄️ Server A2\nBandung\nBackup Barat")]
    P2 -->|Replikasi| R2A[("🗄️ Server B1\nSurabaya")]
    P2 -->|Replikasi| R2B[("🗄️ Server B2\nMakassar\nBackup Timur")]

    style Master fill:#E65100,color:#fff
    style P1 fill:#EF6C00,color:#fff
    style P2 fill:#EF6C00,color:#fff
```

**Kapan digunakan:** Sistem skala besar yang butuh keduanya — performa lokal (partisi) dan ketahanan gangguan (replikasi).

---

### Perbandingan 4 Opsi

| Opsi | Cara | Redundansi | Kompleksitas | Cocok Untuk |
|------|------|------------|-------------|-------------|
| **Replikasi** | Salin seluruh data | Tinggi | Sedang | High availability, read-heavy |
| **Partisi Horizontal** | Pecah per baris | Rendah | Rendah-Sedang | Data regional, sharding |
| **Partisi Vertikal** | Pecah per kolom | Rendah | Sedang | Data sensitif, akses terpisah |
| **Kombinasi** | Gabungan | Sedang-Tinggi | Tinggi | Sistem enterprise besar |

---

## 4. Strategi Basis Data Terdistribusi

Ada 5 strategi utama berdasarkan perbandingan 5 dimensi:

### Tabel Perbandingan Strategi

| Strategi | Keandalan | Ekspandabilitas | Overhead Komunikasi | Manageability | Konsistensi Data |
|----------|-----------|-----------------|--------------------|-----------|----|
| **Terpusat (Centralized)** | ❌ BURUK — sangat bergantung pada server pusat | ❌ BURUK — skalabilitas terbatas | ❌ SANGAT TINGGI — semua traffic ke 1 titik | ✅ SANGAT BAIK — satu titik, koordinasi minimal | ✅ SEMPURNA — semua user lihat data sama |
| **Replikasi dengan Snapshot** | ✅ BAIK — redundansi ada, tapi ada delay | ✅✅ SANGAT BAIK — salinan bisa lebih murah dari linear | ✅ RENDAH-SEDANG — tidak konstan, snapshot periodik bisa menyebabkan burst traffic | ✅ SANGAT BAIK — tiap salinan identik | ⚠️ SEDANG — oke jika delay bisa ditolerir bisnis |
| **Replikasi Tersinkronisasi** | ✅✅ SEMPURNA — redundansi + minimal delay | ✅✅ SANGAT BAIK — sync work linear | ⚠️ SEDANG — pesan konstan, ada delay yang ditolerir | ⚠️ SEDANG — collision menambah kompleksitas | ✅✅ SEDANG-SANGAT BAIK — mendekati konsistensi presisi |
| **Partisi Terintegrasi** | ✅✅ SANGAT BAIK — partisi + redundansi efektif | ✅✅ SANGAT BAIK — node baru hanya dapat data yang dibutuhkan | ✅ RENDAH-SEDANG — query lokal baik, lintas site bisa berat | ❌ SULIT — query lintas partisi harus terkoordinasi ketat | ❌ SANGAT BURUK — inkonsistensi sulit dihindari |
| **Desentralisasi Independen** | ✅ BAIK — bergantung ketersediaan lokal | ✅ BAIK — node baru independen | ✅✅ RENDAH — sedikit/tidak ada traffic lintas jaringan | ✅ SANGAT BAIK — tiap site mudah dikelola sendiri | ❌ RENDAH — tidak ada jaminan konsistensi antar site |

### Visualisasi Perbandingan

```mermaid
flowchart LR
    subgraph S1["1. Terpusat"]
        C[("☁️ Server\nPusat")]
        u1[User] --> C
        u2[User] --> C
        u3[User] --> C
    end

    subgraph S2["2. Replikasi Snapshot"]
        M2[("📦 Master")] -->|Snapshot| R2a[("📋")]
        M2 -->|Snapshot| R2b[("📋")]
    end

    subgraph S3["3. Replikasi Sync"]
        M3[("🔄 Master")] <-->|Real-time| R3a[("🔄")]
        M3 <-->|Real-time| R3b[("🔄")]
    end

    subgraph S4["4. Partisi Terintegrasi"]
        P4a[("📊 Partisi A")] <--> P4b[("📊 Partisi B")]
        P4a <--> P4c[("📊 Partisi C")]
    end

    subgraph S5["5. Desentralisasi"]
        D1[("🏠 Site A")]
        D2[("🏠 Site B")]
        D3[("🏠 Site C")]
    end
```

### Detail Setiap Strategi

#### 1. Terpusat (Centralized)
Semua data ada di satu server pusat. Ini bukan distributed database sejati, tapi menjadi baseline perbandingan.

```
Kelebihan: Konsistensi sempurna, mudah dikelola
Kekurangan: Single point of failure, bottleneck jaringan, tidak skalabel
Cocok untuk: Organisasi kecil, data yang sangat sensitif dan perlu kontrol ketat
```

#### 2. Replikasi dengan Snapshot
Master database secara periodik membuat salinan (snapshot) ke server-server lain.

```
Kelebihan: High availability, query lokal cepat
Kekurangan: Data mungkin stale (ketinggalan dari master)
Cocok untuk: Data laporan, analitik, data yang tidak perlu real-time
```

**Contoh SQL Snapshot:**
```sql
-- Di MySQL, membuat replica dengan binary log
-- Server Master: aktifkan binary logging
[mysqld]
log-bin=mysql-bin
server-id=1

-- Server Replica: set sebagai slave
CHANGE MASTER TO
  MASTER_HOST='192.168.1.1',
  MASTER_USER='replicator',
  MASTER_PASSWORD='password',
  MASTER_LOG_FILE='mysql-bin.000001';
START SLAVE;
```

#### 3. Replikasi Tersinkronisasi (Synchronized Replication)
Setiap perubahan di master langsung direplikasi ke semua server secara real-time sebelum transaksi dianggap selesai.

```
Kelebihan: Konsistensi hampir sempurna, tidak ada data stale
Kekurangan: Setiap write harus tunggu konfirmasi semua replika → latensi write tinggi
Cocok untuk: Perbankan, sistem keuangan, e-commerce dengan stok real-time
```

#### 4. Partisi Terintegrasi (Integrated Partitions)
Data dibagi ke beberapa server berdasarkan partisi, dengan koordinasi pusat untuk query lintas partisi.

```
Kelebihan: Skalabilitas horizontal sangat baik, storage efisien
Kekurangan: Query lintas partisi kompleks, konsistensi sulit dijaga
Cocok untuk: Big data, sistem dengan data regional yang jelas
```

#### 5. Desentralisasi dengan Partisi Independen
Tiap site benar-benar independen — tidak ada koordinasi antar site.

```
Kelebihan: Performa lokal sempurna, tidak bergantung jaringan
Kekurangan: Tidak ada konsistensi global, data antar site bisa berbeda
Cocok untuk: Organisasi dengan cabang benar-benar independen, tidak perlu sinkronisasi
```

---

## 5. Perbandingan Terpusat vs Terdistribusi

```mermaid
flowchart TD
    Q["Kebutuhan Sistem?"]

    Q -->|"Satu lokasi\nData kecil-menengah\nKontrol penuh"| Terpusat["✅ Gunakan\nBasis Data Terpusat"]
    Q -->|"Multi lokasi\nData besar\nHigh availability\nPerforma lokal"| Terdistribusi["✅ Gunakan\nBasis Data Terdistribusi"]

    Terdistribusi --> R{"Perlu salinan\npenuh di tiap site?"}
    R -->|Ya| Replikasi["Replikasi\n(Snapshot/Sync)"]
    R -->|Tidak| Partisi{"Data bisa\ndipecah per?"}
    Partisi -->|Baris| PH["Partisi\nHorizontal"]
    Partisi -->|Kolom| PV["Partisi\nVertikal"]
    Partisi -->|Keduanya + Replikasi| Kombinasi["Kombinasi"]

    style Terpusat fill:#1B5E20,color:#fff
    style Terdistribusi fill:#1565C0,color:#fff
    style Replikasi fill:#0277BD,color:#fff
    style PH fill:#6A1B9A,color:#fff
    style PV fill:#B71C1C,color:#fff
    style Kombinasi fill:#E65100,color:#fff
```

### Kapan Pilih Terpusat?

- Organisasi kecil dengan satu kantor
- Data sangat sensitif yang tidak boleh tersebar
- Tim IT terbatas, ingin manajemen sederhana
- Budget terbatas

### Kapan Pilih Terdistribusi?

- Kantor/cabang di banyak kota/negara
- Kebutuhan high availability (99.99% uptime)
- Volume data sangat besar
- Pengguna tersebar geografis dan perlu akses cepat

---

## 6. CAP Theorem

Setiap sistem basis data terdistribusi harus menghadapi trade-off yang dikenal sebagai **CAP Theorem** (Teorema CAP):

```mermaid
flowchart TD
    CAP["🔺 CAP Theorem\nHanya bisa pilih 2 dari 3"]

    CAP --> C["🔵 Consistency\nSemua node lihat\ndata yang sama\npada waktu yang sama"]
    CAP --> A["🟢 Availability\nSetiap request\nselalu dapat respons\n(walau bukan data terbaru)"]
    CAP --> P["🔴 Partition Tolerance\nSistem tetap berjalan\nmeski ada partisi/kegagalan\njaringan"]

    CA["CA\nBD Terpusat\n(MySQL tunggal)"] -.->|Consistency + Availability| CAP
    CP["CP\nSistem Konsisten\n(HBase, MongoDB)"] -.->|Consistency + Partition| CAP
    AP["AP\nSistem Tersedia\n(Cassandra, CouchDB)"] -.->|Availability + Partition| CAP

    style CAP fill:#37474F,color:#fff
    style C fill:#1565C0,color:#fff
    style A fill:#2E7D32,color:#fff
    style P fill:#B71C1C,color:#fff
```

| Pilihan | Yang Dikorbankan | Contoh Sistem | Cocok Untuk |
|---------|-----------------|---------------|-------------|
| **CA** (Consistency + Availability) | Partition Tolerance | MySQL tunggal, PostgreSQL tunggal | Sistem kecil, satu lokasi |
| **CP** (Consistency + Partition) | Availability | HBase, MongoDB, ZooKeeper | Perbankan, sistem keuangan |
| **AP** (Availability + Partition) | Consistency | Cassandra, CouchDB, DynamoDB | Media sosial, e-commerce, IoT |

> **Catatan:** Dalam praktik, sistem terdistribusi selalu butuh *Partition Tolerance* (P), sehingga pilihan nyata adalah **CP vs AP**.

---

## 7. Contoh Penerapan Nyata

### Studi Kasus: Jaringan Minimarket Nasional

Sebuah jaringan minimarket memiliki 1.000 gerai di seluruh Indonesia dan kantor pusat di Jakarta.

```mermaid
flowchart TD
    Pusat[("🏢 Server Pusat\nJakarta\nData Master")]

    Pusat <-->|"Replikasi Sync\nData Produk & Harga"| Regional_Barat[("🗄️ Server Regional\nJawa Barat")]
    Pusat <-->|"Replikasi Sync\nData Produk & Harga"| Regional_Timur[("🗄️ Server Regional\nJawa Timur")]
    Pusat <-->|"Replikasi Sync\nData Produk & Harga"| Regional_Sum[("🗄️ Server Regional\nSumatera")]

    Regional_Barat -->|"Partisi Horizontal\nData Transaksi Lokal"| G1["🏪 Gerai 001\nBandung"]
    Regional_Barat -->|"Partisi Horizontal\nData Transaksi Lokal"| G2["🏪 Gerai 002\nBogor"]
    Regional_Timur -->|"Partisi Horizontal\nData Transaksi Lokal"| G3["🏪 Gerai 003\nSurabaya"]
    Regional_Sum -->|"Partisi Horizontal\nData Transaksi Lokal"| G4["🏪 Gerai 004\nMedan"]

    style Pusat fill:#1565C0,color:#fff
    style Regional_Barat fill:#1976D2,color:#fff
    style Regional_Timur fill:#1976D2,color:#fff
    style Regional_Sum fill:#1976D2,color:#fff
```

**Strategi yang digunakan:**
- **Replikasi Tersinkronisasi** untuk data master (produk, harga) → semua gerai lihat harga yang sama
- **Partisi Horizontal** untuk data transaksi → setiap gerai simpan transaksinya sendiri secara lokal
- **Kombinasi** di level regional → backup antar regional

### Strategi yang Tepat per Jenis Data

| Jenis Data | Karakteristik | Strategi Terbaik |
|-----------|--------------|-----------------|
| Data Produk & Harga | Dibaca banyak, jarang update | Replikasi Snapshot |
| Data Transaksi Penjualan | Tulis lokal, laporan ke pusat | Partisi Horizontal |
| Data Karyawan Sensitif | Akses terbatas per divisi | Partisi Vertikal |
| Data Stok Real-time | Harus konsisten lintas gerai | Replikasi Tersinkronisasi |

---

## 8. Ringkasan

```mermaid
flowchart LR
    subgraph Konsep
        BDT["Basis Data\nTerdistribusi"]
        BDT --> DEF["1 basis data logis\nbanyak lokasi fisik"]
    end

    subgraph Alasan["6 Alasan"]
        direction TB
        A1["Unit Bisnis\nTerdistribusi"]
        A2["Berbagi Data"]
        A3["Biaya Komunikasi"]
        A4["Multi-Vendor"]
        A5["DB Recovery"]
        A6["Sinkronisasi"]
    end

    subgraph Opsi["4 Opsi Distribusi"]
        direction TB
        O1["Replikasi\n(salinan penuh)"]
        O2["Partisi Horizontal\n(pecah baris)"]
        O3["Partisi Vertikal\n(pecah kolom)"]
        O4["Kombinasi"]
    end

    subgraph Strategi["5 Strategi"]
        direction TB
        S1["Terpusat"]
        S2["Replikasi Snapshot"]
        S3["Replikasi Sync"]
        S4["Partisi Terintegrasi"]
        S5["Desentralisasi"]
    end

    BDT --> Alasan
    BDT --> Opsi
    Opsi --> Strategi
```

### Poin Kunci

| Konsep | Inti Pemahaman |
|--------|---------------|
| **Basis Data Terdistribusi** | Satu BD logis, tersebar di banyak lokasi fisik lewat jaringan |
| **Replikasi** | Salinan penuh data di banyak server → high availability, query cepat |
| **Partisi Horizontal** | Pecah berdasarkan baris (contoh: data regional berbeda server) |
| **Partisi Vertikal** | Pecah berdasarkan kolom (contoh: data sensitif dipisah) |
| **Kombinasi** | Gabungkan replikasi + partisi untuk manfaat optimal |
| **CAP Theorem** | Sistem distributed harus trade-off antara Consistency, Availability, dan Partition Tolerance |
| **Strategi Terpusat** | Konsistensi sempurna, tapi tidak skalabel dan rawan single point of failure |
| **Replikasi Tersinkronisasi** | Konsistensi terbaik di antara strategi terdistribusi, tapi overhead tinggi |

---

> **Catatan Belajar:** Basis data terdistribusi hadir sebagai solusi untuk tantangan nyata — bisnis yang tersebar geografis, kebutuhan high availability, dan volume data yang besar. Pemilihan strategi bergantung pada trade-off antara konsistensi, ketersediaan, dan kompleksitas manajemen. Tidak ada strategi yang sempurna; selalu ada pertimbangan sesuai kebutuhan spesifik organisasi.
