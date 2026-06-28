# Permasalahan Sosial dan Etika pada Sistem Informasi

**STSI4207 Sistem Informasi Manajemen**
Program Studi Sistem Informasi — Fakultas Sains dan Teknologi — Universitas Terbuka

Materi ini membahas sisi **etika dan dampak sosial** dari penerapan sistem informasi — mulai dari bagaimana keputusan etis dibuat, hak privasi dan kekayaan intelektual, kualitas sistem, hingga dampaknya terhadap kualitas hidup dan lingkungan.

> Kaitan dengan Inisiasi 1 & 2 (STSI4207): jika Inisiasi 1 membahas bagaimana teknologi informasi mendorong perubahan bisnis dan Inisiasi 2 membahas dampaknya pada organisasi serta strategi bisnis, Inisiasi 3 ini melihat **sisi lain dari mata uang yang sama** — dampak negatif dan dilema etis yang muncul ketika teknologi informasi yang sama itu digunakan secara tidak bertanggung jawab.

---

## 1. Dampak Sistem Informasi pada Etika

- Teknologi informasi sebagai suatu ciptaan manusia sebenarnya **bersifat netral**. Hanya saja ketika teknologi informasi digunakan oleh pihak-pihak yang **tidak bertanggung jawab** atau hanya digunakan untuk mengejar **keuntungan sesaat**, maka dampak negatif akan muncul.
- Para manajer sering melakukan tindakan dan membuat keputusan yang masuk ke **wilayah abu-abu**.
- Permasalahan yang dihadapi belum ada aturannya, sehingga para pelaku bisnis sering harus bertindak **tanpa pedoman aturan atau regulasi yang jelas**. Dalam situasi tersebut dibutuhkan **etika bisnis**.

```mermaid
flowchart LR
    TI5["Teknologi Informasi\n(netral)"] --> PENGGUNA{"Bagaimana\nDigunakan?"}
    PENGGUNA -->|bertanggung jawab| POSITIF["Dampak Positif"]
    PENGGUNA -->|tidak bertanggung jawab/\nmengejar keuntungan sesaat| NEGATIF["Dampak Negatif\n(wilayah abu-abu,\nbelum ada aturan)"]
    NEGATIF --> ETIKA["Dibutuhkan\nEtika Bisnis"]
```

### Definisi Etika

**Etika** didefinisikan sebagai prinsip tentang hal yang **baik dan salah**, di mana prinsip tersebut digunakan oleh seseorang dengan **kehendak bebas** untuk membuat keputusan dan membimbing perilakunya (Boylan, 2014; Brooks & Dunn, 2018).

---

## 2. Dasar Pembuatan Keputusan Etis

Tiga konsep dasar yang mendasari pembuatan keputusan etis (Boylan, 2014; Brooks & Dunn, 2018):

```mermaid
flowchart TD
    DKE["Dasar Pembuatan\nKeputusan Etis"] --> TJ["Tanggung Jawab\n(siap menanggung akibat\nkeputusan yang dibuat)"]
    DKE --> AKU["Akuntabilitas\n(mekanisme menentukan\nsiapa bertindak & bertanggung jawab)"]
    DKE --> LIA["Liabilitas\n(perpanjangan tanggung jawab\ndalam ranah legal)"]
```

| Konsep | Penjelasan |
|---|---|
| **Tanggung Jawab** | Pembuat keputusan siap menanggung akibat yang mungkin terjadi atas keputusan yang dibuatnya. |
| **Akuntabilitas** | Mekanisme yang menentukan siapa yang bertindak dan siapa yang bertanggung jawab atas suatu tindakan. |
| **Liabilitas** | Perpanjangan konsep bertanggung jawab dalam ranah legal. |

> Ketiga konsep ini berjenjang: **tanggung jawab** adalah kesiapan moral menanggung akibat, **akuntabilitas** adalah mekanisme untuk melacak siapa yang harus bertanggung jawab, dan **liabilitas** adalah bentuk tanggung jawab tersebut ketika sudah masuk ke ranah hukum.

### Keputusan Etis dan Dilema Etika

Ketika seseorang dihadapkan pada kondisi harus membuat keputusan etis, biasanya akan muncul **dilema etika**.

> **Dilema etika** adalah masalah pengambilan keputusan antara **dua keharusan moral** yang mungkin terjadi, dan **semua alternatif keputusan tidak dapat diterima atau lebih disukai** (Dolgoff et al., 2012; Stuart et al., 2014).

```mermaid
flowchart LR
    DE["Dilema Etika"] --> M1["Keharusan Moral 1"]
    DE --> M2["Keharusan Moral 2"]
    M1 --> HASIL["Semua Alternatif\nTidak Ideal/Tidak Disukai"]
    M2 --> HASIL
```

---

## 3. Hak Informasi, Privasi, dan Kebebasan

Beberapa prinsip etika yang dapat membantu dalam memilih alternatif terbaik (Boylan, 2014; Brooks & Dunn, 2018; Dolgoff et al., 2012; Sommers-Flanagan & Sommers-Flanagan, 2015; Stuart et al., 2014):

1. **Hak atas privasi** termasuk dalam **Hak Asasi Manusia (HAM)** dan diatur dalam **Undang-Undang Nomor 39 Tahun 1999** tentang HAM dan **Undang-Undang Nomor 12 Tahun 2005** tentang Pengesahan *International Covenant on Civil and Political Rights*.
2. **Undang-Undang Nomor 36 Tahun 1999** menyatakan bahwa **penyadapan dilarang** bagi informasi milik pribadi yang merupakan hak pribadi dan harus dilindungi, kecuali untuk keperluan **penegakan hukum**.
3. **Peran serta pemerintah** sebagai regulator dan pelindung warga negaranya.

```mermaid
flowchart TD
    HP["Hak Informasi,\nPrivasi, & Kebebasan"] --> HAM["Hak atas Privasi\n(HAM, UU No. 39/1999,\nUU No. 12/2005)"]
    HP --> SADAP["Larangan Penyadapan\n(UU No. 36/1999,\nkecuali penegakan hukum)"]
    HP --> PEM["Peran Pemerintah\n(regulator & pelindung\nwarga negara)"]
```

---

## 4. Hak Kepemilikan Kekayaan Intelektual

**Kekayaan intelektual** adalah produk berwujud maupun tak berwujud yang diciptakan oleh pemikiran individu maupun organisasi (Brynjolfsson & Saunders, 2010).

Beberapa hak kekayaan intelektual yang biasa digunakan (Brynjolfsson & Saunders, 2010; Shapiro & Varian, 1999):

```mermaid
flowchart TD
    KI["Kekayaan Intelektual"] --> A["Rahasia Dagang"]
    KI --> B["Hak Cipta"]
    KI --> C["Hak Paten"]
    KI --> D["Merek Dagang"]
    KI --> E["Desain Industri"]
```

---

## 5. Permasalahan Liabilitas Terkait Komputer

- Cukup sulit untuk **menuntut pertanggungjawaban produsen perangkat lunak** jika ada masalah pada produknya.
- **Contoh:** sangat sulit menuntut Microsoft bertanggung jawab jika kita menggunakan MS Word kemudian mengalami *"crash"* dan menyebabkan tulisan kita hilang.
- Kebanyakan kesalahan ataupun gangguan pada sistem komputer **tidak menyebabkan kerugian yang fatal**.

```mermaid
flowchart LR
    PROD["Produsen\nPerangkat Lunak"] -.->|sulit dituntut\npertanggungjawaban| MASALAH["Masalah pada Produk\n(misal: crash, data hilang)"]
    MASALAH --> KERUGIAN["Kebanyakan Tidak\nFatal/Tidak Signifikan"]
```

---

## 6. Kualitas Sistem

- Mengembangkan suatu sistem informasi yang baik merupakan upaya yang **tidak mudah**.
- Suatu sistem informasi besar biasanya dikerjakan oleh **beberapa kelompok yang berbeda**.
- Uji coba akan menemukan kesalahan dan kelemahan untuk kemudian dilakukan upaya koreksi — namun dalam praktiknya, **pengujian dan koreksi dibatasi oleh tenggat waktu proyek** sistem informasi (PMI, 2013; Schwalbe, 2014).
- Seringkali kesalahan atau kelemahan yang dianggap **tidak fatal tidak dikoreksi** pada saat sistem tersebut dikembangkan, dengan pertimbangan **biaya dan waktu**.
- Tidak ada panduan yang pasti mengenai standar kualitas suatu sistem informasi — kapan pengujian dan koreksi harus terus dilakukan dan kapan harus dihentikan merupakan **diskresi** dari para pengembang sistem informasi dan manajer proyek.

```mermaid
flowchart TD
    KS["Kualitas Sistem\nInformasi"] --> UJI["Uji Coba\n(temukan kesalahan\n& kelemahan)"]
    UJI --> BATAS{"Dibatasi Tenggat\nWaktu & Biaya Proyek"}
    BATAS -->|fatal| KOREKSI["Dikoreksi"]
    BATAS -->|dianggap tidak fatal| ABAIKAN["Sering Tidak Dikoreksi\n(diskresi pengembang\n& manajer proyek)"]
```

> Poin ini berkaitan langsung dengan **Permasalahan Liabilitas** pada bagian 5 — karena tidak ada standar kualitas yang pasti, dan kebanyakan kesalahan dianggap "tidak fatal", maka secara hukum juga sulit menuntut produsen perangkat lunak atas kesalahan yang muncul kemudian.

---

## 7. Kualitas Kehidupan

Dampak negatif penggunaan teknologi informasi juga dapat berdampak pada **kualitas kehidupan manusia**, mencakup tujuh dampak:

```mermaid
flowchart TD
    KK["Dampak pada\nKualitas Kehidupan"] --> D1["1. Pergeseran Kekuatan\nSecara Politis"]
    KK --> D2["2. Mengaburkan Batas\nKehidupan Profesional & Pribadi"]
    KK --> D3["3. Ketergantungan pada\nSistem Berbasis Komputer"]
    KK --> D4["4. Kejahatan &\nPenyalahgunaan Komputer"]
    KK --> D5["5. Hilangnya\nBeberapa Jenis Pekerjaan"]
    KK --> D6["6. Kesenjangan Digital"]
    KK --> D7["7. Dampak bagi\nKesehatan"]
```

| No | Dampak | Penjelasan Singkat |
|---|---|---|
| 1 | Pergeseran kekuatan politis | Teknologi informasi mengubah siapa yang memegang kendali/pengaruh dalam masyarakat. |
| 2 | Batas profesional & pribadi kabur | Pekerjaan dapat menyusup ke waktu pribadi melalui perangkat yang selalu terhubung. |
| 3 | Ketergantungan pada komputer | Organisasi dan individu menjadi sangat bergantung pada sistem berbasis komputer. |
| 4 | Kejahatan & penyalahgunaan komputer | Munculnya bentuk-bentuk kejahatan baru yang memanfaatkan teknologi informasi. |
| 5 | Hilangnya jenis pekerjaan | Otomatisasi menggantikan pekerjaan yang sebelumnya dilakukan manusia. |
| 6 | Kesenjangan digital | Tidak semua kelompok masyarakat memiliki akses yang setara terhadap teknologi informasi. |
| 7 | Dampak kesehatan | Penggunaan teknologi informasi yang berlebihan dapat memengaruhi kesehatan fisik maupun mental. |

---

## 8. Dampak Lingkungan

Penggunaan teknologi informasi juga memberikan **dampak negatif pada lingkungan**:

- Dampak negatif ini dapat berupa **konsumsi energi** dan penggunaan **bahan beracun dan berbahaya**.
- Semakin banyak komputer yang digunakan, semakin banyak **energi listrik** yang dikonsumsi. Upaya menggantikan sumber energi konvensional dengan **energi baru terbarukan** terus berlangsung, namun sampai saat ini sumber energi konvensional masih menjadi alternatif **paling murah dan handal**.
- Selain penggunaan listrik, komponen perangkat keras komputer kerap menggunakan **bahan berbahaya dan beracun** bagi lingkungan, seperti **timah hitam, merkuri, arsenik, cadmium**, dan lainnya (Jain & Chawla, 2014).

```mermaid
flowchart TD
    LING2["Dampak Lingkungan\ndari Teknologi Informasi"] --> ENERGI["Konsumsi Energi Listrik\n(sumber konvensional\nmasih dominan)"]
    LING2 --> RACUN["Bahan Beracun & Berbahaya\n(timah hitam, merkuri,\narsenik, cadmium)"]
```

---

## Ringkasan Keterkaitan Antar Konsep

```mermaid
flowchart TD
    NETRAL["Teknologi Informasi\nBersifat Netral"] --> ETIKA2["Etika & Keputusan Etis\n(tanggung jawab, akuntabilitas,\nliabilitas, dilema etika)"]
    ETIKA2 --> HAK["Hak Privasi &\nKekayaan Intelektual"]
    HAK --> LIABILITAS["Liabilitas Komputer\n(sulit dituntut)"]
    LIABILITAS --> KUALITAS["Kualitas Sistem\n(dibatasi biaya & waktu)"]
    KUALITAS --> KEHIDUPAN["Kualitas Kehidupan\n(7 dampak sosial)"]
    KEHIDUPAN --> LINGKUNGAN2["Dampak Lingkungan\n(energi & bahan beracun)"]
```

Inti dari materi ini: teknologi informasi pada dasarnya **netral**, tetapi penggunaannya oleh manusia dapat menimbulkan **dilema etika** yang kompleks — mulai dari isu privasi dan kekayaan intelektual, ketidakjelasan liabilitas hukum ketika sistem gagal, keterbatasan dalam menjamin kualitas sistem karena tekanan biaya dan waktu, hingga dampak yang lebih luas pada **kualitas hidup manusia dan lingkungan**. Memahami dimensi etis ini sama pentingnya dengan memahami dimensi teknis dan strategis sistem informasi yang sudah dibahas pada Inisiasi 1 dan 2, karena keputusan yang secara teknis "benar" belum tentu secara etis "tepat".
