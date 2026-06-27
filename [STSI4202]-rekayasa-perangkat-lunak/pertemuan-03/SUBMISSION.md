## INSTRUCTION

1. Dalam pengembangan perangkat lunak, tahapan rekayasa yang baik sangat penting untuk keberhasilan proyek. Jelaskan mengapa tahapan rekayasa perangkat lunak yang terstruktur diperlukan dan apa dampaknya jika tahapan tersebut diabaikan? Berikan contoh nyata dari proyek perangkat lunak yang berhasil atau gagal akibat perencanaan yang baik atau buruk. **(30pt)**
2. Anda sedang mengembangkan sistem informasi akademik untuk universitas. Identifikasi minimal 5 kebutuhan utama sistem berdasarkan perspektif: (1) Mahasiswa, (2) Dosen, dan (3) Administrasi Universitas. Jelaskan mengapa kebutuhan tersebut penting dan bagaimana pengaruhnya terhadap kinerja sistem secara keseluruhan. **(40pt)**
3. Dalam suatu proyek sistem informasi rumah sakit, klien kesulitan mendefinisikan kebutuhan mereka secara detail dan sering mengubah spesifikasi selama pengembangan. Model pengembangan perangkat lunak apa yang paling sesuai untuk menangani kondisi ini? Jelaskan alasan pemilihan model tersebut dan bagaimana cara Anda memastikan proyek tetap berjalan dengan baik meskipun spesifikasi sering berubah. **(30pt)**

## SUBMITTED ANSWER

### Pentingnya Tahapan Rekayasa Perangkat Lunak yang Terstruktur

Perangkat lunak adalah produk intelektual yang kompleks, melibatkan banyak pemangku kepentingan, dan berdampak luas pada operasional organisasi. Karena itu, tahapan rekayasa yang terstruktur (analisis kebutuhan, desain, implementasi, pengujian, hingga pemeliharaan) berfungsi sebagai kerangka kontrol yang menjamin kualitas, prediktabilitas biaya, manajemen risiko, dan keberlanjutan produk. Sommerville (2016) menegaskan bahwa proses perangkat lunak yang terdefinisi dengan baik adalah pondasi untuk menghasilkan sistem yang andal dan dapat dipelihara.

Sebaliknya, mengabaikan tahapan terstruktur memicu efek domino: kebutuhan tidak terpetakan secara akurat, rework membengkak, jadwal molor, bug lolos ke produksi, dan biaya pemeliharaan melonjak. Pressman & Maxim (2020) menyebut fenomena ini sebagai "chaos cycle" dalam pengembangan perangkat lunak.

Studi kasus kegagalan yang ikonik adalah Therac-25 (1985–1987), mesin terapi radiasi medis yang menyebabkan beberapa pasien meninggal akibat overdose radiasi. Investigasi Leveson & Turner (1993) menunjukkan akar masalahnya bukan pada hardware, melainkan pada proses rekayasa perangkat lunak yang gagal di mana unit testing tidak memadai, dokumentasi minim, dan analisis risiko diabaikan saat pengaman hardware dihilangkan. Kasus serupa juga terjadi pada Denver International Airport Baggage System (1995) yang molor 16 bulan dengan kerugian sekitar 560 juta USD karena analisis kebutuhan yang dipaksakan dalam tenggat tidak realistis.

Studi kasus keberhasilan ditunjukkan oleh NASA Space Shuttle Primary Avionics Software System yang dikembangkan IBM Federal Systems Division. Dengan menerapkan formal review, dokumentasi lengkap, dan verifikasi independen, sistem ini mencapai defect density hampir nol — bukti bahwa rekayasa terstruktur menghasilkan produk yang tidak hanya berfungsi, tetapi juga life-critical safe.

Tahapan terstruktur bukan sekadar birokrasi, melainkan investasi terhadap keberhasilan dan keselamatan produk perangkat lunak.

### Identifikasi Kebutuhan Sistem Informasi Akademik

Sistem informasi akademik (SIAKAD) bersifat multi-stakeholder, sehingga identifikasi kebutuhan harus dipetakan berdasarkan perspektif tiap aktor utama.

Mahasiswa yang merupakan pengguna terbesar dengan kebutuhan layanan mandiri:

1. KRS online untuk fleksibilitas pemilihan mata kuliah tanpa batasan tempat.
2. Akses nilai dan transkrip digital untuk transparansi dan evaluasi diri.
3. Jadwal kuliah dan ujian terintegrasi untuk perencanaan belajar.
4. Pembayaran SPP/UKT online dengan verifikasi otomatis.
5. Bimbingan akademik daring dengan dosen wali untuk konsultasi studi.

Dosen sebagai aktor akademik yang membutuhkan efisiensi pengajaran dan administrasi:

6. Manajemen kelas dan presensi digital untuk pencatatan kehadiran.
7. Input nilai terstandar dengan formula penilaian yang konsisten.
8. Distribusi materi dan tugas via LMS terintegrasi untuk mendukung blended learning.
9. Persetujuan KRS mahasiswa bimbingan sebagai kontrol akademik.
10. Pelaporan Beban Kerja Dosen (BKD) untuk akuntabilitas tridarma.

Administrasi Universitas sebagai pengelola data dan kepatuhan regulasi:

11. Manajemen data mahasiswa dan dosen terpusat sebagai single source of truth.
12. Manajemen kurikulum dan mata kuliah sesuai standar SN-Dikti.
13. Pelaporan ke PDDIKTI/Feeder sebagai kewajiban regulatif Kemdikbud.
14. Manajemen keuangan dan tagihan terintegrasi dengan registrasi.
15. Dashboard analitik akademik sebagai dasar pengambilan keputusan strategis.

Kelima belas kebutuhan ini saling terhubung dalam rantai proses akademik. Sebuah KRS mahasiswa misalnya, secara simultan memicu validasi dosen wali, alokasi jadwal oleh admin, perhitungan tagihan keuangan, hingga pelaporan ke PDDIKTI. Bila salah satu titik lemah, terjadi bottleneck sistemik. Oleh karena itu, SIAKAD harus dirancang dengan prinsip integrasi data terpusat, modularitas, dan role-based access control agar setiap aktor mendapat layanan sesuai perannya tanpa mengorbankan integritas data.

### Model Pengembangan untuk Sistem Informasi Rumah Sakit

Model yang akan saya pilih adalah Agile (Scrum) dengan kombinasi pendekatan Prototyping. Sistem informasi rumah sakit (SIMRS) memiliki dua karakter unik. Pertama, melibatkan banyak aktor heterogen yakni dokter, perawat, apoteker, kasir, hingga manajemen dengan alur kerja klinis yang dinamis. Kedua, regulasi seperti BPJS, akreditasi KARS, dan kebijakan internal kerap berubah selama proyek berjalan. Model Waterfall mengasumsikan kebutuhan stabil di awal, sehingga tidak mampu mengakomodasi perubahan tanpa biaya besar. Sebaliknya, Agile (Scrum) bersifat iteratif-inkremental di mana sistem dibangun melalui sprint 2–4 minggu yang masing-masing menghasilkan increment siap uji, sehingga umpan balik klien dapat diserap secara cepat dan terus-menerus (Schwaber & Sutherland, 2020). Prototyping melengkapi Agile dengan visualisasi awal yang membantu klien non-teknis mengartikulasikan kebutuhannya yang mana sesuai dengan prinsip evolutionary development (Sommerville, 2016).

Strategi menjaga proyek agar tetap terkendali meski spesifikasi berubah adalah sebagai berikut:
- Product backlog yang diprioritaskan oleh Product Owner dari rumah sakit agar setiap perubahan terdokumentasi dan terkontrol.
- Sprint review rutin sebagai titik validasi bersama klien di akhir setiap iterasi.
- Pendekatan Minimum Viable Product dengan mengembangkan fitur inti (registrasi pasien, rekam medis, billing) terlebih dahulu, baru fitur lanjutan.
- Change request management untuk menganalisis dampak setiap perubahan terhadap scope, biaya, dan jadwal sebelum disetujui.
- Dokumentasi minimum yang konsisten karena Agile mengutamakan working software, namun untuk sistem life-critical seperti SIMRS, dokumentasi tetap esensial demi keselamatan pasien dan kepatuhan akreditasi.
- Skema kontrak fleksibel seperti time-and-material atau fixed-price per sprint yang lebih sesuai untuk proyek dengan kebutuhan dinamis dibanding fixed-price tradisional.

Dengan kombinasi ini, perubahan spesifikasi tidak lagi dipandang sebagai gangguan, melainkan sebagai bagian alami dari proses pematangan sistem yang mana sejalan dengan prinsip kedua Agile Manifesto: "Welcome changing requirements, even late in development" (Beck et al., 2001).

Daftar Pustaka
- Beck, K., Beedle, M., van Bennekum, A., Cockburn, A., Cunningham, W., Fowler, M., Grenning, J., Highsmith, J., Hunt, A., Jeffries, R., Kern, J., Marick, B., Martin, R. C., Mellor, S., Schwaber, K., Sutherland, J., & Thomas, D. (2001). Manifesto for agile software development. https://agilemanifesto.org/
- Leveson, N. G., & Turner, C. S. (1993). An investigation of the Therac-25 accidents. Computer, 26(7), 18–41. https://doi.org/10.1109/MC.1993.274940
- Pressman, R. S., & Maxim, B. R. (2020). Software engineering: A practitioner's approach (9th ed.). McGraw-Hill Education.
- Schwaber, K., & Sutherland, J. (2020). The scrum guide: The definitive guide to scrum: The rules of the game. https://scrumguides.org/
- Simarmata, J. (2010). Rekayasa Perangkat Lunak. Penerbit Andi.
- Sommerville, I. (2016). Software Engineering (10th ed.). Pearson Education.
- Sukamto, R. A. (2022). Rekayasa Perangkat Lunak. Universitas Terbuka.
