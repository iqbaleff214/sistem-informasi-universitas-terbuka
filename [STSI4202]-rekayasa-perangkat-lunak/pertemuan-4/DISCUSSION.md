## INSTRUCTION

Sebuah klinik bernama SehatMed ingin mengembangkan sistem manajemen klinik untuk membantu pencatatan pasien, jadwal dokter, dan transaksi pembayaran. Sistem ini akan digunakan oleh staf administrasi, dokter, dan pasien.

Sebagai analis sistem, Anda diminta untuk merancang Data Flow Diagram (DFD) untuk sistem ini. Namun, tim pengembang masih memiliki pertanyaan:
- Sampai level berapa DFD harus diturunkan agar sistem dapat dipahami dengan baik?
- Bagaimana menentukan bahwa DFD sudah cukup detail untuk melanjutkan ke tahap desain pemrograman?
- Jika DFD terlalu sederhana, sistem bisa jadi kurang jelas. Tetapi jika terlalu rinci, bisa jadi membuang waktu dan membuat analisis lebih kompleks dari yang diperlukan.

Pertanyaan Diskusi:
1. Sampai kapan analisis DFD dilakukan? Bagaimana menentukan bahwa DFD sudah cukup detail dan tidak perlu diturunkan lebih lanjut?
2. Apa dampak dari DFD yang terlalu sederhana atau terlalu kompleks dalam pengembangan sistem berbasis pemrograman terstruktur?
3. Bagaimana pendekatan terbaik untuk menjaga keseimbangan antara kejelasan sistem dan efisiensi dalam perancangan DFD?

Selamat berdiskusi!

## SUBMITTED ANSWER

<p><em>Bismillahirrahmanirrahim</em></p>
<h5>Sampai kapan analisis DFD dilakukan? Bagaimana menentukan bahwa DFD sudah cukup detail dan tidak perlu diturunkan lebih lanjut?</h5>
<p>Analisis DFD dilakukan secara bertingkat mulai dari Diagram Konteks (Level 0), kemudian diturunkan ke DFD Level 1, Level 2, dan seterusnya melalui proses <em>decomposition</em>. Penurunan dihentikan ketika sebuah proses sudah dianggap primitif (<em>functional primitive</em>), yaitu proses yang cukup sederhana untuk dijelaskan dengan satu spesifikasi proses (<em>process specification</em> atau <em>mini-spec</em>) tanpa perlu dipecah lagi.</p>
<p>Indikator bahwa DFD sudah cukup detail antara lain setiap proses hanya melakukan satu fungsi tunggal yang jelas, alur data masuk dan keluar sudah seimbang (<em>balanced</em>), tidak ada lagi logika kompleks yang tersembunyi di dalam proses, dan setiap <em>data store</em> serta entitas eksternal sudah teridentifikasi dengan jelas. Untuk sistem berskala menengah seperti SehatMed, biasanya DFD Level 2 atau maksimal Level 3 sudah memadai, karena domainnya jelas (administrasi, dokter, pembayaran) dan tidak melibatkan proses bisnis yang sangat berlapis.</p>
<p>Dalam praktik 5 tahun saya sebagai <em>software engineer</em>, saya jarang menemui kasus di mana DFD perlu turun hingga Level 4. Untuk sistem klinik seperti SehatMed, biasanya cukup Level 2 atau Level 3 hanya bila proses pembayaran melibatkan integrasi BPJS atau asuransi yang kompleks. Tim yang sering "kebablasan" menurunkan DFD biasanya akan mengalami <em>analysis paralysis</em>, proyek macet di tahap dokumentasi tanpa pernah masuk ke fase <em>coding</em>.</p>
<h5>Apa dampak dari DFD yang terlalu sederhana atau terlalu kompleks dalam pengembangan sistem berbasis pemrograman terstruktur?</h5>
<p>DFD terlalu sederhana berisiko menyembunyikan kompleksitas nyata sistem. <em>Programmer</em> akan kesulitan menerjemahkan diagram ke dalam kode karena banyak logika bisnis tidak terdefinisi, sehingga muncul asumsi liar saat <em>coding</em>. Akibatnya, sering terjadi <em>bug</em> karena alur data tidak dipetakan secara utuh, dan validasi sistem menjadi sulit karena tidak ada acuan rinci.</p>
<p>DFD terlalu kompleks, di sisi lain, menimbulkan <em>over-engineering</em> pada tahap analisis. Tim menghabiskan waktu berhari-hari memecah proses kecil yang sebenarnya bisa langsung diimplementasikan, dokumentasi membengkak dan sulit dipelihara, serta perubahan kebutuhan klien menjadi mahal karena harus memperbarui banyak level diagram secara konsisten (Pressman &amp; Maxim, 2020).</p>
<h5>Bagaimana pendekatan terbaik untuk menjaga keseimbangan antara kejelasan sistem dan efisiensi dalam perancangan DFD?</h5>
<p>Beberapa prinsip praktis untuk menjaga keseimbangan:</p>
<ol>
<li>Terapkan <strong>prinsip "7±2 proses per diagram"</strong> di mana pada setiap level, idealnya hanya ada lima hingga sembilan proses agar diagram tetap mudah dibaca tanpa kehilangan informasi penting (Sukamto &amp; Shalahuddin, 2018).</li>
<li>Gunakan <strong><em>balancing rule</em></strong> dengan pastikan jumlah dan jenis aliran data di level atas konsisten dengan dekomposisinya di level bawah. Ini mencegah kebingungan saat diagram diturunkan.</li>
<li>Terapkan <strong><em>stop criteria</em> yang jelas</strong>, hentikan dekomposisi jika proses sudah bisa dijelaskan dalam satu paragraf <em>mini-spec</em> atau <em>pseudocode</em> singkat, atau jika tidak ada lagi nilai tambah informasi yang bisa diperoleh dengan memecahnya.</li>
<li>Lakukan <strong><em>review</em> bersama <em>developer</em></strong>. Jika tim <em>coding</em> sudah merasa cukup memahami diagram untuk mulai <em>coding</em>, itu sinyal kuat bahwa DFD sudah cukup matang.</li>
<li>Gunakan <strong>pendekatan iteratif</strong>. DFD tidak harus sempurna di awal yang artinya boleh disempurnakan saat ada temuan baru di fase desain teknis.</li>
</ol>
<p>Untuk kasus SehatMed secara konkret, saya merekomendasikan struktur berikut dengan Diagram Konteks menggambarkan tiga entitas (<strong>pasien</strong>, <strong>dokter</strong>, <strong>staf admin</strong>) dengan sistem klinik di tengah; DFD Level 1 memecah menjadi empat proses utama (<strong>Manajemen Pasien</strong>, <strong>Penjadwalan Dokter</strong>, <strong>Pelayanan Medis</strong>, <strong>Transaksi Pembayaran</strong>); dan DFD Level 2 hanya untuk proses yang memang kompleks seperti <strong>Transaksi Pembayaran</strong> (subproses validasi tagihan, pemilihan metode pembayaran, pencatatan transaksi). Modul sederhana seperti Manajemen Pasien tidak perlu turun ke Level 2.</p>
<p>DFD bukan tentang seberapa dalam ia bisa diturunkan, melainkan seberapa efektif ia menjembatani pemahaman antara analis, klien, dan <em>developer</em>. Untuk sistem SehatMed, DFD hingga Level 2 (dengan Level 3 di area pembayaran) sudah memadai. Prinsip utamanya adalah berhenti mendekomposisi ketika diagram berikutnya tidak lagi memberi nilai tambah informasi. Keseimbangan antara kejelasan dan efisiensi inilah yang membedakan analis sistem yang berpengalaman dari yang masih belajar.</p>
<h5>Sumber Referensi</h5>
<p><span style="font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, 'Noto Sans', 'Liberation Sans', sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 1rem;">Kendall, K. E., &amp; Kendall, J. E. (2014). <em>Systems analysis and design (9th ed.)</em>. Pearson Education.</span></p>
<p>Pressman, R. S., &amp; Maxim, B. R. (2020). <em>Software engineering: A practitioner's approach (9th ed.)</em>. McGraw-Hill Education.</p>
<p>Sommerville, I. (2016). <em>Software engineering (10th ed.)</em>. Pearson Education.</p>
<p>Sukamto, R. A., &amp; Shalahuddin, M. (2018). <em>Rekayasa perangkat lunak: Terstruktur dan berorientasi objek (Edisi revisi)</em>. Informatika.</p>
<p>Yourdon, E. (2006). <em>Just enough structured analysis</em>. Yourdon Press.</p>

## OTHERS

### NUR SITI KHODIJAH 056252611

<div id="post-content-103970011" class="post-content-container" bis_skin_checked="1">
                                        <div class="text_to_html" bis_skin_checked="1">1.	Analisis Data Flow Diagram (DFD) dilakukan sampai setiap proses dalam sistem sudah tergambar secara jelas, spesifik, dan tidak menimbulkan ambiguitas. Penurunan DFD tidak harus mencapai level tertentu, tetapi disesuaikan dengan kebutuhan sistem. DFD dianggap cukup detail ketika setiap proses sudah memiliki alur input, proses, dan output yang jelas serta sudah bisa diterjemahkan ke dalam bentuk algoritma atau pseudocode.<br>
Contohnya pada sistem klinik SehatMed. Pada level awal terdapat proses “Kelola Data Pasien”. Proses ini masih terlalu umum, sehingga perlu diturunkan menjadi lebih rinci, misalnya menjadi “Input Data Pasien”, “Validasi Data Pasien”, dan “Simpan Data Pasien”. Ketika proses sudah sampai pada tahap ini dan alurnya sudah jelas, maka penurunan dapat dihentikan karena sudah siap diimplementasikan ke dalam program.<br>
2.	DFD yang terlalu sederhana dapat menyebabkan sistem tidak tergambar dengan jelas. Misalnya hanya terdapat satu proses besar seperti “Kelola Klinik” tanpa penjelasan lebih lanjut. Hal ini membuat programmer kesulitan memahami apa saja yang harus dibuat, sehingga berisiko terjadi kesalahan atau ada fitur yang terlewat, seperti jadwal dokter atau pembayaran pasien.<br>
Sebaliknya, DFD yang terlalu kompleks juga tidak baik. Misalnya proses “Simpan Data Pasien” dipecah lagi menjadi langkah-langkah teknis seperti “Buka koneksi database”, “Eksekusi query SQL”, dan “Tutup koneksi”. Detail seperti ini sebenarnya sudah masuk ke tahap pemrograman, bukan analisis, sehingga membuat DFD menjadi terlalu rumit dan sulit dipahami oleh pengguna.<br>
3.	Untuk menjaga keseimbangan antara kejelasan dan efisiensi, pendekatan yang terbaik adalah menggunakan metode top-down, yaitu dimulai dari gambaran umum lalu diturunkan secara bertahap sesuai kebutuhan. Fokus utama tetap pada proses bisnis, seperti pendaftaran pasien, pengelolaan jadwal dokter, dan transaksi pembayaran.<br>
Sebagai contoh, pada sistem SehatMed:<br>
-	Level 0 menggambarkan sistem secara umum yang berinteraksi dengan pasien, dokter, dan admin.<br>
-	Level 1 memecah menjadi proses seperti “Kelola Data Pasien”, “Kelola Jadwal Dokter”, dan “Kelola Pembayaran”.<br>
-	Level 2 menjelaskan lebih detail, misalnya “Input Jadwal Dokter”, “Lihat Jadwal”, dan “Update Jadwal”.<br>
Jika pada level tersebut semua proses sudah jelas dan dapat diprogram, maka tidak perlu diturunkan lagi. Dengan cara ini, DFD tetap mudah dipahami sekaligus cukup detail untuk mendukung pengembangan sistem.<br>
<br>
Referensi :<br>
-	Rosa, A. S., &amp; Shalahuddin, M. (2021). Rekayasa Perangkat Lunak Terstruktur dan Berorientasi Objek. Bandung: Informatika.<br>
-	Indrajani. (2021). Analisis dan Perancangan Sistem Informasi. Jakarta: Elex Media Komputindo.<br>
-	Universitas Terbuka. (2023). Modul Sistem Informasi Manajemen. Tangerang Selatan: Universitas Terbuka.</div>
                                    </div>

### MOCHAMAD RIZKI BAHTIAR 054945088

<div class="text_to_html" bis_skin_checked="1">Analisis DFD dilakukan sampai setiap proses sudah jelas, tidak ambigu, dan memiliki alur input–proses–output yang lengkap sehingga bisa langsung diterjemahkan ke dalam logika program. Tidak harus sampai level tertentu, tetapi disesuaikan dengan kebutuhan sistem. Contohnya pada SehatMed, proses umum seperti pengelolaan data pasien perlu dipecah menjadi proses yang lebih spesifik, dan jika sudah jelas maka penurunan bisa dihentikan.<br>
<br>
DFD yang terlalu sederhana membuat sistem kurang tergambar dengan baik sehingga berisiko menimbulkan kesalahan saat pengembangan. Sebaliknya, jika terlalu kompleks, DFD menjadi sulit dipahami dan tidak efisien karena masuk ke detail teknis yang seharusnya ada di tahap pemrograman. Oleh karena itu, keduanya dapat menghambat proses pengembangan sistem.<br>
<br>
Keseimbangan dapat dijaga dengan pendekatan top-down, yaitu dari gambaran umum ke detail sesuai kebutuhan, dengan fokus pada proses bisnis utama seperti pasien, jadwal dokter, dan pembayaran. Jika pada suatu level semua proses sudah jelas dan bisa diprogram, maka tidak perlu diturunkan lagi agar tetap efisien dan mudah dipahami<br>
<br>
sumber :<br>
Kenneth E. Kendall &amp; Julie E. Kendall. (2019). Systems Analysis and Design. Pearson.<br>
Alan Dennis, Barbara Haley Wixom, &amp; Roberta M. Roth. (2018). Systems Analysis and Design: An Object-Oriented Approach with UML. Wiley.<br>
Jeffrey L. Whitten &amp; Lonnie D. Bentley. (2007). Systems Analysis and Design Methods. McGraw-Hill.</div>

### MUHAMMAD FARHAN RAMADHAN 055064067

<div class="text_to_html" bis_skin_checked="1">Baiklah saya akan menjawab pertanyaan dari dosen.<br>
1. Sampai kapan analisis DFD dilakukan? Bagaimana menentukan bahwa DFD sudah cukup detail dan tidak perlu diturunkan lebih lanjut?<br>
Jawaban:<br>
Aturan praktis dalam analisis terstruktur: DFD diturunkan sampai tiap proses sudah jadi functional primitive. Artinya, proses itu sudah tidak bisa dipecah lagi tanpa masuk ke detail algoritma/kode.<br>
Level 1 - Dekomposisi Utama:  <br>
Pecah jadi 3-5 proses utama:  Kelola Data Pasien  Kelola Jadwal Dokter  Kelola Rekam Medis  Kelola Transaksi Pembayaran  Buat Laporan  Level 2 - Detail Tiap Proses:  <br>
Contoh "Kelola Transaksi Pembayaran" dipecah lagi:<br>
1.  Hitung Biaya Layanan<br>
2. Verifikasi Asuransi<br>
3. Proses Pembayaran Tunai/QRIS<br>
4.  Cetak Kwitansi  Berhenti di sini jika proses "Hitung Biaya Layanan" sudah bisa dijelaskan dalam 1 paragraf narasi atau 1 halaman pseudocode sederhana. Kalau masih kompleks, baru turun ke Level 3.<br>
Kapan berhenti? Pakai 3 kriteria ini:  <br>
1. Kriteria 7±2: Satu diagram jangan lebih dari 9 proses. Kalau sudah &gt;9, berarti harus dipecah ke level bawahnya.<br>
2. Kriteria Narasi Tunggal: Jika proses bisa dijelaskan dengan 1 paragraf tanpa kata dan, atau, jika,  yang bercabang banyak, berarti sudah primitif.<br>
3. Kriteria Validasi User: Staf  bisa baca DFD dan bilang "iya, memang begitu alurnya". Kalau mereka bingung, berarti terlalu abstrak.<br>
<br>
2. Apa dampak dari DFD yang terlalu sederhana atau terlalu kompleks dalam pengembangan sistem berbasis pemrograman terstruktur?<br>
Jawaban: <br>
Jika terlalu sederhana:<br>
1. Ambiguitas: Programmer bebas menafsirkan. Kelola Pembayaran bisa diartikan cuma catat manual atau integrasi QRIS otomatis.<br>
2. Missed Requirement: Alur retur obat atau batal jadwal tidak tergambar.<br>
3. Sulit Estimasi: Programer tidak bisa hitung berapa modul, berapa lama coding.<br>
Jika terlalu komplek:<br>
1. Sulit Maintenance: DFD 200 halaman tidak ada yang mau update, begitu ada perubahan BPJS, dokumentasi sudah tidak sinkron dengan kode.<br>
2. Analysis Paralysis: Waktu habis untuk gambar diagram, bukan bikin sistem.<br>
<br>
3. Bagaimana pendekatan terbaik untuk menjaga keseimbangan antara kejelasan sistem dan efisiensi dalam perancangan DFD?<br>
Jawaban:<br>
1. Mulai dari use case: Sebelum DFD, list dulu 10-15 use case utama sehatmed: Daftar pasien baru, booking dokter, Input diagnosa, Bayar via QRIS.<br>
2. Teknik Event Partitioning: Bagi DFD berdasarkan event, bukan fungsi. <br>
3. Timebox Leveling: Kasih batas waktu.<br>
4. Validasi 3 Pihak: Tiap selesai 1 level, lakukan review: staf, programer, tester.<br>
5. Bedakan antara bisnis dengan sistem.<br>
<br>
Kesimpulan:<br>
1. Stop di Level 2-3: Turunkan DFD sampai tiap proses jadi functional primitive yang bisa dijelaskan 1 paragraf.<br>
2. Tes Kesiapan: DFD siap ke desain jika semua data store bisa jadi tabel, semua proses punya spec &lt;1 halaman, dan programmer tidak perlu tanya lagi.<br>
<br>
Referensi:<br>
1. Kendall &amp; Kendall. Systems Analysis and Design, 10th Edition. 2019. Bab 7: Data Flow Diagramming. Aturan pemberhentian leveling dan functional primitive.<br>
2. Yourdon, Edward. Modern Structured Analysis. 1989. Konsep event partitioning dan level balancing untuk hindari over-detail.<br>
3. IEEE Std 1016-2009. Software Design Descriptions. Menyebutkan DFD sebagai bagian SDD, dan kriteria kelengkapan untuk lanjut ke desain.</div>
