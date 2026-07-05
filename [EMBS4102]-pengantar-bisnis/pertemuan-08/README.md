# Sesi 8 — Lingkungan Usaha & Etika Bisnis dan Tanggung Jawab Sosial Perusahaan

**EMBS4102 Pengantar Bisnis**
Program Studi Sistem Informasi — Universitas Terbuka

> Catatan: dokumen ini merupakan ekstraksi sekaligus elaborasi dari materi *Inisiasi 8*, yang mencakup dua modul: **Modul 8 — Lingkungan Usaha** dan **Modul 9 — Etika Bisnis dan Tanggung Jawab Sosial Perusahaan (CSR)**. Setiap poin dijelaskan lebih dalam dengan konteks, referensi ahli, dan contoh nyata. Diagram konseptual digambarkan ulang menggunakan mermaid.

---

# Modul 8 — Lingkungan Usaha

## 1. Lingkungan Umum dan Lingkungan Khusus Bisnis

### Lingkungan Umum Perusahaan

> **Lingkungan umum perusahaan** terdiri dari berbagai kekuatan (*forces*) yang akan mempengaruhi perusahaan-perusahaan secara umum dan mempengaruhi kemampuan perusahaan untuk memperoleh sumber daya ekonomi.

```mermaid
flowchart TD
    LU["Lingkungan Umum\nPerusahaan"] --> EF["Economic Forces\n(kekuatan ekonomi)\nPertumbuhan ekonomi, inflasi,\nsuku bunga, nilai tukar,\ntingkat pengangguran"]
    LU --> IF["International Forces\n(kekuatan internasional)\nPerdagangan global, geopolitik,\nstandar internasional"]
    LU --> DF["Demographic &\nCultural Forces\nPerubahan demografi populasi\n& pergeseran nilai budaya"]
    LU --> PF["Political Forces\n(kekuatan politik)\nRegulasi pemerintah,\nkebijakan & hukum"]
    LU --> TF["Technological Forces\n(kekuatan teknologi)\nInovasi, digitalisasi,\ndisrupsi teknologi"]
```

| Kekuatan | Penjelasan | Contoh Dampak pada Bisnis |
|---|---|---|
| **Economic Forces** | Kondisi makroekonomi yang memengaruhi daya beli konsumen dan biaya operasional. | Kenaikan suku bunga meningkatkan cicilan kredit, menekan ekspansi bisnis. |
| **International Forces** | Dinamika hubungan antarnegara dan perdagangan global. | Perang dagang AS-China memaksa banyak perusahaan merelokasi rantai pasok. |
| **Demographic & Cultural Forces** | Perubahan struktur populasi (usia, urbanisasi) dan nilai-nilai budaya masyarakat. | Aging population di Jepang mendorong ledakan bisnis layanan lansia. |
| **Political Forces** | Regulasi, kebijakan fiskal-moneter pemerintah, dan stabilitas politik. | Perubahan UU Ketenagakerjaan berdampak langsung pada biaya SDM perusahaan. |
| **Technological Forces** | Inovasi teknologi yang mengubah cara produksi, distribusi, dan interaksi dengan pelanggan. | AI dan otomasi menggantikan pekerjaan rutin di pabrik dan kantor. |

> Kelima kekuatan ini sering dianalisis menggunakan **PESTEL framework** (*Political, Economic, Social, Technological, Environmental, Legal*) — alat analisis makro-lingkungan standar dalam manajemen strategis. Pemahaman mendalam atas kekuatan-kekuatan ini adalah prasyarat bagi perencanaan strategis yang tanggap terhadap perubahan.

### Lingkungan Khusus Perusahaan

> **Lingkungan khusus** suatu perusahaan terdiri dari para pemegang kepentingan di luar perusahaan (*outside stakeholders*) yang secara langsung mempengaruhi kemampuan organisasi untuk memperoleh sumber daya ekonomi.

```mermaid
flowchart LR
    LK["Lingkungan Khusus\n(Outside Stakeholders)"] --> S1["Pemasok\n(Suppliers)"]
    LK --> S2["Pesaing\n(Competitors)"]
    LK --> S3["Pelanggan\n(Customers)"]
    LK --> S4["Penyalur\n(Distributors)"]
    LK --> S5["Kelompok Penekan\n(Pressure Groups)"]
    LK --> S6["Kreditur\n(Creditors)"]
```

> Berbeda dengan lingkungan umum yang memengaruhi semua perusahaan secara luas, lingkungan khusus bersifat **unik untuk setiap industri dan perusahaan** — tekanan dari pelanggan Tokopedia berbeda dengan tekanan pelanggan rumah sakit, meski keduanya sama-sama menghadapi kekuatan ekonomi dan teknologi yang serupa.

## 2. Pemangku Kepentingan (*Stakeholders*)

### Definisi

Menurut **Freeman (1984: 46)**:

> **Stakeholder** adalah setiap kelompok atau individu yang dapat **mempengaruhi atau dipengaruhi** oleh pencapaian tujuan perusahaan.

Menurut **Donaldson dan Preston (1995)**:

> Stakeholders akan memberikan dukungan terhadap perusahaan apabila mereka memperoleh **imbalan sebanding atau lebih besar** dari perusahaan dibandingkan kontribusi yang mereka berikan.

> Ini adalah prinsip **quid pro quo** (*ada imbalan untuk setiap kontribusi*) yang mendasari seluruh hubungan stakeholder: karyawan bekerja keras bila dibayar dengan baik, investor menanamkan modal bila mendapat return yang kompetitif, pelanggan loyal bila mendapat nilai yang sepadan. Manajer yang memahami prinsip ini akan membangun sistem insentif yang saling menguntungkan.

### Klasifikasi Stakeholder

#### Berdasarkan Kedudukan dalam Perusahaan (Jones, 1995)

```mermaid
flowchart TD
    STK["Stakeholders\n(Jones, 1995)"] --> IN["Inside Stakeholders\nOrang-orang dengan kepentingan\ndan tuntutan di DALAM\norganisasi perusahaan"]
    STK --> OUT["Outside Stakeholders\nPihak-pihak yang bukan\npemilik, pemimpin, atau\nkaryawan perusahaan"]

    IN --> IN1["Pemegang Saham\n(Shareholders)"]
    IN --> IN2["Manajer"]
    IN --> IN3["Karyawan"]

    OUT --> OUT1["Pelanggan (Customers)"]
    OUT --> OUT2["Pemasok (Suppliers)"]
    OUT --> OUT3["Pemerintah (Government)"]
    OUT --> OUT4["Serikat Pekerja (Unions)"]
    OUT --> OUT5["Komunitas Lokal"]
    OUT --> OUT6["Masyarakat Umum"]
```

#### Berdasarkan Aktivitas Perusahaan (Post et al., 2011)

```mermaid
flowchart TD
    STK2["Stakeholders\n(Post et al., 2011)"] --> PS["Primary Stakeholders\nBerinteraksi langsung &\nmempengaruhi kemampuan\nperusahaan menyediakan\nbarang dan jasa"]
    STK2 --> SS["Secondary Stakeholders\nDipengaruhi langsung/tidak langsung\noleh kegiatan utama &\nkeputusan perusahaan"]

    PS --> PS1["Investor"]
    PS --> PS2["Kreditur"]
    PS --> PS3["Karyawan"]
    PS --> PS4["Pemasok"]
    PS --> PS5["Saluran Pemasaran"]

    SS --> SS1["Masyarakat Umum"]
    SS --> SS2["Pemerintah (berbagai tingkatan)"]
    SS --> SS3["Kelompok Aktivis Sosial"]
    SS --> SS4["Media"]
    SS --> SS5["Komunitas Lokal"]
    SS --> SS6["Investasi Asing"]
```

> **Primary vs. Secondary** bukan soal kepentingan yang lebih atau kurang penting — melainkan soal **kedekatan dan langsung tidaknya** pengaruh. Kelompok aktivis lingkungan (*secondary*) bisa sangat berpengaruh terhadap reputasi perusahaan, bahkan bila mereka tidak bertransaksi langsung. Era media sosial membuat batas antara primary dan secondary semakin kabur.

## 3. Manajemen Para Pemangku Kepentingan

**Berman, Wicks, Kotha, dan Jones (1999: 488–494)** mengidentifikasi dua model *stakeholder management*:

| Model | Filosofi |
|---|---|
| **Strategic Stakeholder Management** | Memenuhi kepentingan stakeholder karena hal itu meningkatkan kinerja dan nilai perusahaan — motivasinya **instrumental** (stakeholder sebagai sarana mencapai tujuan bisnis). |
| **Intrinsic Stakeholder Commitment** | Memenuhi kepentingan stakeholder karena itu adalah kewajiban moral yang benar — motivasinya **normatif** (stakeholder memiliki hak yang harus dipenuhi). |

**Langkah-langkah penerapan Stakeholder Management:**

```mermaid
flowchart TD
    SM["Stakeholder Management"] --> L1["1. Identifikasi\nStakeholder Perusahaan\n(siapa saja yang terlibat)"]
    L1 --> L2["2. Menetapkan Stakeholder\nyang Relevan\n(siapa yang kritis bagi strategi)"]
    L2 --> L3["3. Perumusan Kebijakan &\nStrategi Stakeholder Management\n(bagaimana mengelola tiap kelompok)"]
    L3 --> L4["4. Pemetaan Kelompok Stakeholders\nberdasarkan Potensi Ancaman\n& Kerja Sama"]
```

#### Empat Tipe Stakeholder (Blair & Whitehead, 1988)

```mermaid
quadrantChart
    title Pemetaan Stakeholder (Blair & Whitehead, 1988)
    x-axis Potensi Ancaman Rendah --> Potensi Ancaman Tinggi
    y-axis Potensi Kerja Sama Rendah --> Potensi Kerja Sama Tinggi
    quadrant-1 Mixed-Blessing Stakeholder
    quadrant-2 Supportive Stakeholder
    quadrant-3 Marginal Stakeholder
    quadrant-4 Nonsupportive Stakeholder
```

| Tipe | Karakteristik | Strategi yang Tepat |
|---|---|---|
| **Supportive** | Ancaman rendah, kerja sama tinggi — sekutu terbaik perusahaan. | Libatkan dan perkuat hubungan. |
| **Marginal** | Ancaman rendah, kerja sama rendah — kurang relevan saat ini. | Monitor secara berkala. |
| **Nonsupportive** | Ancaman tinggi, kerja sama rendah — potensi oposisi. | Kelola dengan hati-hati, kurangi dampak ancaman. |
| **Mixed-Blessing** | Ancaman tinggi, kerja sama tinggi — bisa jadi sekutu atau lawan. | Kolaborasi strategis untuk mengarahkan ke supportive. |

---

# Modul 9 — Etika Bisnis dan Tanggung Jawab Sosial Perusahaan

## 4. Etika Bisnis

### Definisi Norma, Moralitas, dan Etika

```mermaid
flowchart LR
    N["Norma\nAturan tentang baik/buruk,\nbenar/salah"] -->|"diterima masyarakat\n& jadi budaya"| M["Moralitas\nNorma yang sudah\nmenjadi budaya\nbersama"]
    M -->|"dikaji secara\nsistematis"| E["Etika\nPendekatan sistematis atas\npertimbangan moral:\npenalaran, analisis,\nsintesis, perenungan\n(Baron, 2006: 694)"]
    E -->|"diterapkan\npada bisnis"| EB["Etika Bisnis\nPenerapan etika\nsecara umum terhadap\nperilaku bisnis"]
```

> Perbedaan antara **norma**, **moralitas**, dan **etika** penting dipahami: norma adalah aturan (*rules*), moralitas adalah keyakinan bersama yang sudah terinternalisasi (*shared beliefs*), sementara etika adalah disiplin reflektif yang mengkaji secara kritis apakah suatu tindakan benar atau salah. Etika bisnis tidak sekadar "mematuhi aturan" — ia mengharuskan perusahaan berpikir kritis tentang dampak tindakannya terhadap semua stakeholder.

### Mengapa Bisnis Harus Etis?

Menurut **Post et al. (2002: 104)**, terdapat **tujuh alasan** yang mendorong perusahaan menjalankan bisnis secara etis:

```mermaid
flowchart TD
    EBB["Mengapa Bisnis\nHarus Etis?"] --> A1["1. Meningkatkan ekspektasi publik\nagar perusahaan menjalankan\nbisnis secara etis"]
    EBB --> A2["2. Mencegah tindakan yang\nmembahayakan stakeholders lain"]
    EBB --> A3["3. Meningkatkan kinerja\nperusahaan"]
    EBB --> A4["4. Meningkatkan kualitas hubungan\nbisnis antar pihak\n(kejujuran, menepati janji,\nmenolak suap)"]
    EBB --> A5["5. Mencegah penyalahgunaan\noleh karyawan maupun\nkompetitor tidak etis"]
    EBB --> A6["6. Melindungi hak-hak\npekerja dari pelanggaran\noleh pemberi kerja"]
    EBB --> A7["7. Mencegah sanksi hukum\nakibat bisnis yang\ndijalankan tidak etis"]
```

### Faktor Pemicu Masalah Etika Bisnis

Tiga faktor utama yang mendorong timbulnya masalah etika:

```mermaid
flowchart LR
    FP["Faktor Pemicu\nMasalah Etika Bisnis"] --> F1["Mengejar Keuntungan\n& Kepentingan Pribadi\n(greed & self-interest)"]
    FP --> F2["Tekanan Persaingan\nterhadap Laba Perusahaan\n(competitive pressure)"]
    FP --> F3["Pertentangan Nilai-Nilai\nPerusahaan vs. Perorangan\n(organizational vs. individual values)"]
```

> Ketiga faktor ini saling memperkuat: tekanan persaingan mendorong manajer mengorbankan etika demi laba jangka pendek, sementara konflik nilai antara budaya perusahaan dan nilai pribadi karyawan menciptakan celah di mana penyimpangan etis bisa terjadi. Inilah mengapa **budaya etika organisasi** — bukan sekadar kode etik tertulis — adalah pertahanan terkuat terhadap pelanggaran etika.

### Isu-Isu Etika dalam Berbagai Bidang

```mermaid
flowchart TD
    ISU["Isu-Isu Etika\ndalam Bisnis"] --> I1["Etika Bidang\nAkuntansi & Keuangan\n(manipulasi laporan keuangan,\ninsider trading)"]
    ISU --> I2["Etika Bidang\nPemasaran\n(iklan menyesatkan,\nharga tidak transparan)"]
    ISU --> I3["Etika Bidang\nProduksi\n(standar keselamatan produk,\ndampak lingkungan)"]
    ISU --> I4["Etika Bidang\nTeknologi Informasi\n(privasi data, keamanan\nsistem, hak cipta digital)"]
```

> **Etika bidang teknologi informasi** semakin relevan di era digital: mulai dari penggunaan data pribadi pengguna tanpa izin, algoritma yang bias, hingga eksploitasi celah keamanan sistem. Sebagai mahasiswa Sistem Informasi, pemahaman tentang etika TI adalah tanggung jawab profesional yang tidak bisa diabaikan.

### Standar Etika Bisnis

> **Standar etika bisnis/perusahaan** merupakan berbagai standar etika yang dirumuskan dan disosialisasikan oleh perusahaan kepada seluruh pemangku kepentingan — baik internal maupun eksternal.

Standar etika biasanya diwujudkan dalam bentuk: *code of conduct* (kode perilaku), kebijakan anti-korupsi, panduan whistleblowing, dan program pelatihan etika bagi karyawan.

## 5. Tanggung Jawab Sosial Perusahaan (CSR)

### Pengertian Tanggung Jawab

Menurut **Covey (1997: 61)**, kata *responsibility* terdiri dari dua kata: **response** (respons) + **ability** (kemampuan) — artinya tanggung jawab adalah **kemampuan untuk merespons** terhadap situasi dan konsekuensi dari tindakan yang diambil.

Terdapat **tiga jenis responsibility** *(Post et al., 2002: 69)*:

```mermaid
flowchart LR
    RESP["Tanggung Jawab\nPerusahaan"] --> ER["Economic Responsibility\nMenghasilkan laba yang\ncukup untuk bertahan\n& berkembang"]
    RESP --> LR["Legal Responsibility\nMematuhi hukum\n& regulasi yang berlaku"]
    RESP --> SR["Social Responsibility\nBerkontribusi positif\nbagi masyarakat di\nluar tuntutan hukum"]
```

### Dua Perspektif tentang CSR

```mermaid
flowchart TD
    PRESPEKTIF["Perspektif\nTanggung Jawab Sosial"] --> MF["Milton Friedman\n(Pandangan Klasik)\n'Tanggung jawab sosial\nperusahaan adalah menjalankan\nbisnis sesuai keinginan\npemilik perusahaan'\n→ Maksimalisasi laba\nadalah CSR itu sendiri"]
    PRESPEKTIF --> BR["The Business Roundtable\n(Pandangan Stakeholder)\nPerusahaan harus melayani\nseluruh konstituen:\npelanggan, karyawan,\npenyedia dana, pemasok,\nkomunitas lokal, masyarakat luas,\n& pemegang saham"]
```

> Perdebatan antara **Friedman** dan **Business Roundtable** mencerminkan dua visi fundamental tentang peran perusahaan dalam masyarakat. Di era modern, pandangan Business Roundtable semakin diterima — pada 2019, lebih dari 180 CEO perusahaan besar Amerika menandatangani pernyataan bahwa tujuan korporasi bukan semata-mata memaksimalkan nilai pemegang saham, tetapi memberikan nilai bagi **seluruh stakeholder**.

### Tahap-Tahap Perkembangan CSR

```mermaid
flowchart TD
    T1["Tahap 1\nKepentingan Pemegang Saham\nPemimpin mengedepankan\nkepentingan shareholders\n(profit maximization only)"]
    T2["Tahap 2\nPerhatian terhadap SDM\nMulai memberikan perhatian\npada karyawan:\nkondisi kerja, kesejahteraan"]
    T3["Tahap 3\nStakeholder yang Lebih Luas\nTanggung jawab meluas\nkepada seluruh stakeholder\ndi luar pemegang saham\n& karyawan"]
    T4["Tahap 4\nMasyarakat Secara Keseluruhan\nTanggung jawab sosial\nkepada masyarakat luas:\nlingkungan, komunitas,\ngenerasi mendatang"]

    T1 --> T2 --> T3 --> T4
```

> Tahapan ini mencerminkan evolusi kesadaran korporat dari **shareholder capitalism** (hanya pemegang saham yang penting) menuju **stakeholder capitalism** (semua pemangku kepentingan penting). Perusahaan-perusahaan yang masih berada di Tahap 1 di era ini semakin rentan terhadap tekanan sosial, boikot konsumen, dan regulasi yang semakin ketat.

### Empat Dimensi CSR (Carroll/Solihin, 2008)

```mermaid
flowchart TD
    D4["Discretionary Responsibility\n(Filantropi)\nBerkontribusi pada masyarakat\nbeyond legal & ethical:\ndonasi, program sosial, beasiswa"]
    D3["Ethical Responsibilities\nBerperilaku etis & adil:\nmelakukan hal yang benar,\nhindari kerugian bagi stakeholder"]
    D2["Legal Responsibilities\nMematuhi hukum:\nundang-undang, regulasi,\naturan yang berlaku"]
    D1["Economic Responsibilities ▼\nMenghasilkan laba:\nfondasi dari seluruh\ntanggung jawab lainnya"]

    D4 --> D3 --> D2 --> D1
```

| Dimensi | Penjelasan |
|---|---|
| **Economic** | Fondasi paling dasar — perusahaan harus menghasilkan laba agar bisa bertahan dan memenuhi tanggung jawab lainnya. |
| **Legal** | Mematuhi semua hukum dan regulasi yang ditetapkan masyarakat sebagai aturan main bisnis. |
| **Ethical** | Bertindak benar dan adil bahkan ketika hukum tidak secara eksplisit mewajibkannya. |
| **Discretionary** | Kontribusi sukarela kepada masyarakat yang melampaui tuntutan ekonomi, hukum, dan etika — filantropi murni. |

> Piramida Carroll menunjukkan bahwa CSR bersifat **kumulatif**: tanggung jawab ekonomi adalah dasar, tetapi perusahaan kelas dunia tidak berhenti di situ. Menariknya, banyak perusahaan justru menemukan bahwa praktik Ethical dan Discretionary CSR yang konsisten pada akhirnya **meningkatkan kinerja ekonomi** — bukan mengorbankannya.

### Agenda CSR Asia — 10 Isu Prioritas

```mermaid
flowchart TD
    CSR["10 Isu CSR Asia\n(CSR Asia)"] --> IS1["1. Masalah Lingkungan\n& Perubahan Iklim"]
    CSR --> IS2["2. Transparansi\n& Akuntabilitas"]
    CSR --> IS3["3. Pelembagaan CSR\n(institutionalization)"]
    CSR --> IS4["4. Pelibatan Pemangku\nKepentingan"]
    CSR --> IS5["5. Hak-Hak Buruh\nsebagai HAM"]
    CSR --> IS6["6. Investasi Komunitas"]
    CSR --> IS7["7. Rantai Pasokan &\nKeamanan Produk"]
    CSR --> IS8["8. Social Enterprises\n(perusahaan sosial)"]
    CSR --> IS9["9. Pengurangan\nKemiskinan"]
    CSR --> IS10["10. Perebutan Tenaga\nKerja Berbakat"]
```

### CSR di Indonesia

Pemerintah Indonesia mengelompokkan pengaturan CSR ke dalam **dua kategori**:

```mermaid
flowchart LR
    CSRID["Regulasi CSR\ndi Indonesia"] --> C1["Wajib dari Penyisihan Laba\nPemerintah mewajibkan\nperusahaan menyisihkan\nsebagian laba untuk CSR\n(umumnya berlaku untuk BUMN\n& perusahaan SDA)"]
    CSRID --> C2["Sukarela dari Dana Perusahaan\nPemerintah memberi kebebasan\nperusahaan melaksanakan\nCSR menggunakan\npenyisihan dana sendiri"]
```

#### Program Kemitraan dan Bina Lingkungan (PKBL) BUMN

BUMN di Indonesia menjalankan CSR melalui **Program PKBL** dengan bentuk-bentuk kegiatan:

```mermaid
flowchart TD
    PKBL["Program PKBL BUMN"] --> PK1["Pinjaman Modal Kerja\natau Pembelian Aktiva\nbagi mitra usaha"]
    PKBL --> PK2["Pinjaman Khusus\nbagi UMK\n(Usaha Mikro & Kecil)"]
    PKBL --> PK3["Pendampingan UMK\nuntuk Peningkatan\nKapasitas Usaha"]
    PKBL --> PK4["Capacity Building\ndi bidang:\n• Produksi & Pengolahan\n• Pemasaran\n• SDM\n• Teknologi"]
```

> PKBL adalah wujud konkret bagaimana **BUMN yang menganut Tahap 3–4 CSR** mengintegrasikan tanggung jawab sosialnya ke dalam model bisnis. Bukan sekadar donasi, PKBL dirancang untuk memberdayakan UMKM secara berkelanjutan — memberikan modal, pendampingan, dan peningkatan kapasitas agar mitra bisa mandiri dan tumbuh bersama BUMN.

---

## Ringkasan Keterkaitan Antar Konsep

```mermaid
flowchart TD
    LU2["Lingkungan Umum\n(5 forces: ekonomi, internasional,\ndemografi-budaya, politik, teknologi)"] --> LK2["Lingkungan Khusus\n(6 outside stakeholders:\npemasok, pesaing, pelanggan,\npenyalur, kelompok penekan, kreditur)"]
    LK2 --> STK3["Stakeholders\n(Freeman 1984):\nInside vs. Outside (Jones);\nPrimary vs. Secondary (Post)"]
    STK3 --> SM2["Stakeholder Management\n(2 model; 4 langkah;\n4 tipe Blair & Whitehead)"]
    SM2 --> EB2["Etika Bisnis\n(norma → moralitas → etika;\n7 alasan bisnis harus etis)"]
    EB2 --> CSR2["Tanggung Jawab Sosial\n(CSR)\n(3 jenis; 4 tahap; 4 dimensi\nCarroll; 10 isu Asia)"]
    CSR2 --> CSRID2["CSR di Indonesia\n(regulasi wajib & sukarela;\nPKBL BUMN)"]
```

Inti dari sesi penutup ini: bisnis tidak beroperasi dalam vakum — ia dikelilingi oleh **lingkungan umum** (kekuatan makro) dan **lingkungan khusus** (stakeholder langsung) yang terus berubah dan saling mempengaruhi. Merespons lingkungan ini secara efektif membutuhkan **manajemen stakeholder** yang strategis — memahami siapa mereka, apa yang mereka inginkan, dan bagaimana potensi ancaman atau kerja sama mereka. Di atas semua itu, keberhasilan bisnis jangka panjang kini tidak lagi hanya diukur dari laba — tetapi juga dari komitmen terhadap **etika bisnis** dan **tanggung jawab sosial** (CSR) yang mencakup empat dimensi: ekonomi, hukum, etika, dan filantropi.

---

*Terima kasih*
