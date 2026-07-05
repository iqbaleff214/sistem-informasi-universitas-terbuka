# Sesi 5 — Manajemen Bisnis

**EMBS4102 Pengantar Bisnis**
Program Studi Sistem Informasi — Universitas Terbuka

> Catatan: dokumen ini merupakan ekstraksi sekaligus elaborasi dari materi *Inisiasi 5 — Modul 5: Manajemen Bisnis*. Setiap poin dijelaskan lebih dalam dengan konteks, referensi ahli, dan contoh nyata. Diagram konseptual digambarkan ulang menggunakan mermaid.

Materi inisiasi ini mencakup dua pokok bahasan utama:

- **Bagian 1 — Konsep Manajemen Bisnis**: definisi manajemen, keahlian manajerial, sumber daya organisasi, dan tingkatan manajer.
- **Bagian 2 — Fungsi Manajemen dan Peran Manajer**: fungsi manajemen, motivasi, komunikasi, pengendalian, dan peran manajerial Mintzberg.

---

## Bagian 1 — Konsep Manajemen Bisnis

### 1. Definisi Manajemen

> **Manajemen** dapat didefinisikan sebagai proses **perencanaan, pengorganisasian, kepemimpinan, dan pengendalian** dari berbagai sumber daya organisasi untuk mencapai tujuan secara **efektif dan efisien**.

Dua kata kunci dalam definisi ini perlu dibedakan:

| Kata Kunci | Arti |
|---|---|
| **Efektif** (*effective*) | Mencapai tujuan yang telah ditetapkan — "mengerjakan hal yang benar" (*doing the right things*). |
| **Efisien** (*efficient*) | Mencapai tujuan dengan penggunaan sumber daya sesedikit mungkin — "mengerjakan hal dengan benar" (*doing things right*). |

> Manajemen yang ideal adalah yang **efektif sekaligus efisien**: mencapai tujuan (efektif) dengan pemborosan sumber daya seminimal mungkin (efisien). Sebuah organisasi bisa saja efektif tapi tidak efisien (tujuan tercapai tapi boros biaya), atau efisien tapi tidak efektif (hemat biaya tapi tujuan tidak tercapai) — keduanya bermasalah.

### 2. Keahlian Manajerial (*Managerial Skills*)

Manajer yang efektif harus menguasai serangkaian keahlian. Dua model keahlian manajerial yang paling sering dirujuk:

#### Model Katz (1955)

```mermaid
flowchart TD
    KM["Keahlian Manajerial\n(Katz, 1955)"] --> TS["Technical Skills\nKeahlian teknis spesifik\ndalam bidang pekerjaan"]
    KM --> HS["Human Skills\nKeahlian berinteraksi,\nberkomunikasi, & memotivasi\norang lain"]
    KM --> CS["Conceptual Skills\nKeahlian berpikir abstrak,\nmenganalisis situasi kompleks,\n& melihat gambaran besar"]
```

| Keahlian | Penjelasan | Contoh |
|---|---|---|
| **Technical Skills** | Pengetahuan dan kemahiran dalam metode, proses, prosedur, dan teknik spesifik bidang tertentu. | Manajer keuangan memahami akuntansi; manajer TI memahami pemrograman. |
| **Human Skills** | Kemampuan bekerja secara efektif dengan orang lain — individu maupun kelompok. Mencakup empati, komunikasi, dan kepemimpinan. | Membangun kepercayaan tim, menyelesaikan konflik antar karyawan, menginspirasi semangat kerja. |
| **Conceptual Skills** | Kemampuan melihat organisasi secara holistik dan memahami bagaimana bagian-bagian saling berkaitan dan memengaruhi satu sama lain. | CEO yang mampu mengidentifikasi tren industri 5 tahun ke depan dan menyesuaikan strategi perusahaan. |

> Penting: kebutuhan ketiga keahlian ini **berbeda di setiap tingkatan manajer**. Manajer lini pertama lebih membutuhkan *technical skills*, manajer menengah membutuhkan keseimbangan ketiganya, sementara manajer puncak (CEO) paling membutuhkan *conceptual skills* untuk membaca arah strategis.

#### Model Clark Wilson (Kreitner, 2007)

```mermaid
flowchart LR
    CW["Keahlian Manajerial\n(Clark Wilson/Kreitner, 2007)"] --> T2["Technical Skills\nKeahlian teknis\nbidang kerja"]
    CW --> TB["Teambuilding Skills\nKeahlian membangun\n& mengelola tim"]
    CW --> DS["Drive Skills\nDorongan & inisiatif\nuntuk bertindak"]
```

> Model Wilson menekankan *teambuilding skills* dan *drive skills* sebagai komplemen dari keahlian teknis — menunjukkan bahwa kemampuan membangun tim yang solid dan dorongan proaktif untuk bertindak adalah keahlian yang sama pentingnya dengan kompetensi teknis dalam manajemen modern.

### 3. Sumber Daya Organisasi (*Organizational Resources*)

#### Klasifikasi Tangible vs. Intangible (Barney & Hesterly, 2018)

```mermaid
flowchart TD
    SDO["Sumber Daya Organisasi\n(Barney & Hesterly, 2018)"] --> TAN["Tangible Assets\n(Aset Berwujud)\nDapat dilihat & diraba"]
    SDO --> INT["Intangible Assets\n(Aset Tidak Berwujud)\nNon-fisik, sulit ditiru"]

    TAN --> T1["Bangunan & Pabrik"]
    TAN --> T2["Peralatan & Mesin"]
    TAN --> T3["Persediaan Bahan Baku"]
    TAN --> T4["Aset Keuangan (kas, piutang)"]

    INT --> I1["Brand Name\n(nama merek)"]
    INT --> I2["Reputasi Perusahaan"]
    INT --> I3["Pengetahuan & Pengalaman SDM"]
    INT --> I4["Kekayaan Intelektual\n(paten, hak cipta, trademark)"]
```

| Jenis Aset | Karakteristik | Contoh |
|---|---|---|
| **Tangible Assets** | Dapat dilihat, dihitung, dan dinilai secara fisik. Mudah ditiru pesaing karena bisa dibeli di pasar. | Gedung kantor, mesin produksi, kendaraan operasional, kas di bank. |
| **Intangible Assets** | Non-fisik, sulit dinilai secara akuntansi, tetapi sering kali menjadi sumber **keunggulan bersaing yang berkelanjutan** (*sustainable competitive advantage*) karena sulit ditiru. | Merek Apple, reputasi Amazon, paten teknologi, loyalitas pelanggan setia. |

> **Intangible assets** adalah aset yang paling sering **diremehkan** dalam neraca keuangan konvensional tetapi justru yang paling bernilai dalam ekonomi digital. Nilai pasar Google, misalnya, jauh melampaui nilai aset fisiknya karena reputasi merek dan kekayaan intelektual (algoritma pencarian) yang tidak ternilai. Inilah mengapa **brand building** dan **manajemen pengetahuan** menjadi investasi strategis, bukan sekadar biaya.

#### Klasifikasi Berdasarkan Fungsi Organisasi

```mermaid
flowchart TD
    SDO2["Sumber Daya Organisasi\n(Berdasarkan Fungsi)"] --> SD1["Sumber Daya Manusia\n(Human Resources)"]
    SDO2 --> SD2["Keuangan\n(Financial Resources)"]
    SDO2 --> SD3["Bahan Baku Produksi\n(Raw Materials)"]
    SDO2 --> SD4["Mesin-Mesin &\nPeralatan"]
    SDO2 --> SD5["Teknologi\n(Technology)"]
    SDO2 --> SD6["Pasar\n(Market)"]
    SDO2 --> SD7["Informasi\n(Information)"]
```

> Klasifikasi ini menunjukkan bahwa **informasi** dan **pasar** sudah diakui sebagai sumber daya organisasi yang setara dengan sumber daya fisik dan keuangan — mencerminkan realitas ekonomi berbasis pengetahuan (*knowledge economy*) di mana data dan akses pasar adalah aset strategis yang nyata.

### 4. Tingkatan-Tingkatan Manajer

Di dalam sebuah perusahaan terdapat **tiga tingkatan manajer** yang membentuk hierarki:

```mermaid
flowchart TD
    subgraph PIRAMIDA["Hierarki Manajer"]
        TOP["TOP MANAGEMENT\n(Eksekutif Tertinggi)\nDirektur, CEO\n→ Menetapkan tujuan & strategi\nperusahaan secara keseluruhan"]
        MID["MIDDLE MANAGEMENT\n(Manajer Departemen)\nManajer Keuangan, Marketing,\nProduksi\n→ Menjabarkan strategi menjadi\nprogram departemen"]
        FIRST["FIRST LINE MANAGEMENT\n(Manajer Lini Pertama)\nSupervisor, Kepala Regu\n→ Memimpin karyawan non-manajer\nlangsung di lapangan"]
    end
    TOP --> MID --> FIRST
```

| Tingkatan | Sebutan | Fokus Utama | Keahlian Dominan |
|---|---|---|---|
| **Top Management** | Directors, CEO, Presiden Direktur | Visi, misi, strategi jangka panjang, kebijakan korporat. | Conceptual skills |
| **Middle Management** | Manajer Departemen (Keuangan, Marketing, Produksi) | Menerjemahkan strategi korporat menjadi program kerja departemen; koordinasi antar unit. | Keseimbangan ketiga keahlian |
| **First Line Management** | Supervisor, Kepala Regu, Kepala Shift | Mengawasi pekerjaan harian karyawan non-manajer; memastikan SOP dijalankan. | Technical skills |

> Semakin tinggi tingkatan manajer, semakin luas cakupan tanggung jawabnya dan semakin jauh dari pekerjaan teknis sehari-hari. Inilah mengapa **transisi dari supervisor ke manajer menengah** sering menjadi tantangan besar: seseorang yang unggul secara teknis harus belajar mendelegasikan pekerjaan teknis dan mulai fokus pada koordinasi dan pengembangan strategi.

---

## Bagian 2 — Fungsi Manajemen dan Peran Manajer

### 5. Fungsi-Fungsi Manajemen Bisnis

**Koontz & Weihrich (1988)** mengelompokkan fungsi manajemen ke dalam **lima fungsi** yang dilaksanakan secara **simultan** untuk menjamin tercapainya tujuan perusahaan:

```mermaid
flowchart LR
    P["Planning\n(Perencanaan)\nMenetapkan tujuan &\ncara mencapainya"] --> O["Organizing\n(Pengorganisasian)\nMenyusun struktur,\ntugas & wewenang"] --> S["Staffing\n(Penyusunan Staf)\nRekrutmen, seleksi,\npengembangan SDM"] --> L["Leading\n(Kepemimpinan)\nMemotivasi & mengarahkan\nkaryawan"] --> C["Controlling\n(Pengendalian)\nMonitoring & koreksi\natas penyimpangan"]
    C -->|"umpan balik"| P
```

| Fungsi | Penjelasan |
|---|---|
| **Planning** | Menetapkan tujuan organisasi dan menentukan cara terbaik untuk mencapainya. Termasuk analisis situasi, penetapan sasaran, dan penyusunan rencana aksi. |
| **Organizing** | Merancang struktur organisasi, mendistribusikan tugas dan wewenang, serta mengalokasikan sumber daya agar semua orang tahu peran dan tanggung jawabnya. |
| **Staffing** | Mengelola sumber daya manusia: rekrutmen, seleksi, pelatihan, pengembangan, kompensasi, dan evaluasi kinerja karyawan. |
| **Leading** | Mengarahkan, mempengaruhi, dan memotivasi karyawan untuk bekerja menuju tujuan organisasi — membutuhkan keahlian interpersonal dan kepemimpinan. |
| **Controlling** | Memantau kinerja aktual, membandingkan dengan standar yang ditetapkan, dan mengambil tindakan korektif jika terjadi penyimpangan. |

> Kelima fungsi ini bukan urutan linier yang kaku, melainkan **siklus yang terus berputar**: hasil dari *controlling* menjadi masukan baru bagi *planning* di periode berikutnya — membentuk siklus perbaikan berkelanjutan (*continuous improvement*).

### 6. Proses Motivasi (*Motivating*)

Motivasi adalah hasil interaksi yang dialami individu dengan situasi yang melingkupinya, sehingga **motivasi seseorang dapat berbeda untuk situasi yang berbeda**.

#### Tiga Unsur Utama Motivasi (Robbins & Coulter, 2003)

```mermaid
flowchart LR
    E["Upaya\n(Effort)\nIntensitas & kegigihan\ndalam bekerja"] --> G["Tujuan Organisasi\n(Organizational Goals)\nArah yang dituju\noleh upaya tersebut"]
    N["Kebutuhan\n(Needs)\nKekurangan yang\nmendorong perilaku"] --> E
    G -->|"terpenuhi bila\nselaras dengan"| N
```

| Unsur | Penjelasan |
|---|---|
| **Upaya (*Effort*)** | Intensitas dan ketekunan usaha yang dicurahkan seseorang dalam pekerjaannya. Motivasi tinggi menghasilkan upaya yang tinggi pula. |
| **Tujuan Organisasi (*Organizational Goals*)** | Agar motivasi karyawan bermanfaat bagi organisasi, upaya yang dikerahkan harus diarahkan menuju tujuan organisasi — bukan tujuan pribadi yang bertentangan. |
| **Kebutuhan (*Needs*)** | Ketidakseimbangan internal yang mendorong perilaku — seseorang berusaha keras karena ada kebutuhan yang ingin dipenuhi. |

#### Hierarki Kebutuhan Maslow

Abraham Maslow merumuskan kebutuhan manusia dalam bentuk hierarki lima tingkat:

```mermaid
flowchart TD
    SA["Self-Actualization Needs\n(Aktualisasi Diri)\nMewujudkan potensi penuh;\nkreativitas & pencapaian tertinggi"]
    EST["Esteem Needs\n(Kebutuhan Penghargaan)\nHarga diri, pengakuan,\nprestise & status"]
    SOC["Social Needs\n(Kebutuhan Sosial)\nKasih sayang, persahabatan,\nrasa memiliki & diterima"]
    SAF["Safety Needs\n(Kebutuhan Keamanan)\nKeamanan fisik, stabilitas kerja,\nperlindungan dari ancaman"]
    PHY["Physiological Needs ▼\n(Kebutuhan Fisiologis)\nMakan, minum, tidur, tempat tinggal\n— kebutuhan paling mendasar"]

    SA --> EST --> SOC --> SAF --> PHY
```

> Menurut Maslow, seseorang baru akan termotivasi untuk memenuhi kebutuhan di tingkat lebih tinggi **setelah kebutuhan di tingkat bawahnya terpenuhi secara cukup**. Implikasinya bagi manajemen: manajer harus memahami di tingkat mana kebutuhan karyawannya saat ini agar bisa memberikan motivasi yang tepat sasaran. Memberikan *self-actualization opportunity* kepada karyawan yang masih khawatir soal keamanan kerja tidak akan efektif.

### 7. Komunikasi (*Communication*)

> **Komunikasi** adalah proses pertukaran lambang-lambang — baik verbal maupun nonverbal — antara komunikator dengan *receiver* yang sangat memengaruhi kualitas kepemimpinan.

Tiga kategori komunikasi dalam konteks manajemen:

```mermaid
flowchart LR
    KOM["Komunikasi\nManajerial"] --> KI["Komunikasi Informatif\nMenyampaikan informasi,\ndata, fakta & instruksi\nkepada penerima"]
    KOM --> KR["Komunikasi Rekreatif\nMembangun suasana\npositif & hubungan\nsosial antar individu"]
    KOM --> KP["Komunikasi Persuasif\nMemengaruhi sikap,\npendapat & perilaku\norang lain"]
```

| Kategori | Penjelasan | Contoh dalam Bisnis |
|---|---|---|
| **Informatif** | Komunikasi yang bertujuan menyampaikan informasi faktual — karyawan perlu tahu *apa* yang terjadi dan *apa* yang harus dilakukan. | Memo kebijakan baru, laporan keuangan, briefing operasional harian. |
| **Rekreatif** | Komunikasi yang membangun hubungan sosial, suasana kerja yang positif, dan rasa kebersamaan dalam tim. | Obrolan santai di kantin, acara team building, perayaan ulang tahun karyawan. |
| **Persuasif** | Komunikasi yang bertujuan mengubah sikap atau perilaku orang lain — sangat penting dalam kepemimpinan, penjualan, dan negosiasi. | Presentasi investor, pidato motivasi CEO, negosiasi kontrak dengan klien. |

> Komunikasi yang efektif adalah **inti dari kepemimpinan** yang baik. Penelitian menunjukkan manajer menghabiskan 70–90% waktu kerjanya untuk berkomunikasi dalam berbagai bentuk — rapat, email, telepon, presentasi. Kualitas komunikasi seorang manajer secara langsung berdampak pada kejelasan arah tim, produktivitas, dan kepuasan kerja karyawan.

### 8. Fungsi Pengendalian (*Controlling*)

> **Pengendalian** adalah proses monitoring terhadap berbagai aktivitas yang dilakukan sumber daya organisasi untuk memastikan bahwa aktivitas tersebut akan dapat **mencapai tujuan yang telah ditetapkan** dan tindakan koreksi dapat dilakukan untuk memperbaiki penyimpangan yang terjadi. *(Robbins & Coulter, 2003: 496)*

```mermaid
flowchart LR
    SET["Menetapkan\nStandar Kinerja"] --> MON["Mengukur\nKinerja Aktual"]
    MON --> COMP["Membandingkan\nAktual vs. Standar"]
    COMP --> DEV{"Terjadi\nPenyimpangan?"}
    DEV -->|Ya| COR["Tindakan Koreksi\n(corrective action)"]
    DEV -->|Tidak| OK["Lanjutkan\nAktivitas"]
    COR --> SET
```

> Fungsi pengendalian **menutup siklus manajemen**: hasil monitoring menjadi umpan balik (*feedback*) yang menginformasikan perencanaan berikutnya. Tanpa pengendalian yang efektif, perencanaan yang baik sekalipun tidak menjamin tujuan akan tercapai — karena tidak ada mekanisme untuk mendeteksi dan mengoreksi penyimpangan yang terjadi di lapangan.

### 9. Peranan Manajerial (Mintzberg, 1988)

**Mintzberg (1988)** merumuskan bahwa manajer adalah orang yang memiliki wewenang dalam organisasi karena diberikan **wewenang formal** (*formal authority*) oleh perusahaan. Dari wewenang ini lahirlah **tiga kelompok peran manajerial**:

```mermaid
flowchart TD
    MG["MANAJER\n(Formal Authority)"] --> IR["Interpersonal Roles\n(Peran Antarpribadi)"]
    MG --> INF["Informational Roles\n(Peran Informasional)"]
    MG --> DR["Decisional Roles\n(Peran Pengambil Keputusan)"]

    IR --> IR1["Figurehead Role\nSimbol & representasi\nresmi organisasi"]
    IR --> IR2["Leader Role\nMemimpin, memotivasi\n& mengembangkan bawahan"]
    IR --> IR3["Liaison Role\nMenjalin hubungan\ndengan pihak luar organisasi"]

    INF --> INF1["Monitor Role\nMengumpulkan &\nmemproses informasi"]
    INF --> INF2["Disseminator Role\nMenyebarkan informasi\nke dalam organisasi"]
    INF --> INF3["Spokesman Role\nMewakili organisasi\nkepada pihak luar"]

    DR --> DR1["Entrepreneur Role\nInisiator perubahan\n& inovasi"]
    DR --> DR2["Disturbance Handler\nMengatasi krisis\n& konflik tak terduga"]
    DR --> DR3["Resource Allocator\nMemutuskan alokasi\nsumber daya organisasi"]
    DR --> DR4["Negotiator Role\nMewakili organisasi\ndalam negosiasi"]
```

| Kelompok Peran | Sub-Peran | Penjelasan |
|---|---|---|
| **Interpersonal** | Figurehead | Melakukan tugas-tugas seremonial dan simbolis sebagai kepala unit. |
| | Leader | Memotivasi, mengembangkan, dan mengarahkan bawahan. |
| | Liaison | Membangun jaringan hubungan dengan pihak di luar unit kerjanya. |
| **Informational** | Monitor | Mencari dan menerima informasi dari berbagai sumber untuk memahami organisasi dan lingkungannya. |
| | Disseminator | Meneruskan informasi penting yang diterima kepada anggota organisasi. |
| | Spokesman | Menyampaikan informasi tentang organisasi kepada pihak luar. |
| **Decisional** | Entrepreneur | Menginisiasi dan memimpin proyek perubahan untuk meningkatkan kinerja organisasi. |
| | Disturbance Handler | Mengambil tindakan korektif ketika organisasi menghadapi masalah atau krisis mendadak. |
| | Resource Allocator | Memutuskan bagaimana sumber daya organisasi (waktu, uang, SDM) didistribusikan. |
| | Negotiator | Berpartisipasi dalam negosiasi penting yang mewakili kepentingan organisasi. |

> Model Mintzberg ini penting karena menunjukkan bahwa manajemen **bukan hanya soal menjalankan fungsi-fungsi formal** (plan-organize-lead-control), tetapi juga tentang peran-peran yang lebih *fluid* dan reaktif — seperti menangani gangguan mendadak (*disturbance handler*) atau bernegosiasi (*negotiator*). Realitas pekerjaan manajerial jauh lebih dinamis dan tidak terstruktur dibanding yang digambarkan dalam buku teks.

---

## Ringkasan Keterkaitan Antar Konsep

```mermaid
flowchart TD
    DEF["Definisi Manajemen\n(Plan-Organize-Lead-Control\nuntuk mencapai tujuan\nefektif & efisien)"] --> SKILL["Keahlian Manajerial\n(Katz: Technical-Human-Conceptual;\nWilson: Technical-Teambuilding-Drive)"]
    SKILL --> SDO3["Sumber Daya Organisasi\n(Tangible & Intangible Assets;\n7 jenis berdasarkan fungsi)"]
    SDO3 --> LEVEL["Tingkatan Manajer\n(Top → Middle → First Line)"]
    LEVEL --> FUNGSI2["5 Fungsi Manajemen\n(Koontz & Weihrich: Planning-Organizing\n-Staffing-Leading-Controlling)"]
    FUNGSI2 --> MOTIV["Motivasi\n(Effort × Goals × Needs;\nHierarki Maslow)"]
    MOTIV --> KOMUN["Komunikasi\n(Informatif, Rekreatif, Persuasif)"]
    KOMUN --> KEND["Pengendalian\n(monitor-compare-correct)"]
    KEND --> ROLES["Peran Manajerial Mintzberg\n(Interpersonal-Informational-Decisional)"]
```

Inti dari sesi ini: **manajemen bisnis** adalah seni dan ilmu mengelola sumber daya organisasi — baik yang berwujud (*tangible*) maupun tidak berwujud (*intangible*) — melalui lima fungsi utama (planning, organizing, staffing, leading, controlling) yang dijalankan secara simultan. Manajer yang efektif harus menguasai keahlian teknis, manusiawi, dan konseptual; memahami cara memotivasi dengan tepat berdasarkan hierarki kebutuhan; berkomunikasi secara informatif, rekreatif, dan persuasif; serta mampu menjalankan sepuluh peran manajerial Mintzberg yang mencakup dimensi antarpribadi, informasional, dan pengambilan keputusan.

---

*Terima kasih*
