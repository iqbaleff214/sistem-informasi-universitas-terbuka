## INSTRUCTION

Studi Kasus: Tantangan Dokumentasi pada Hasil Proyek Vendor

PT. ABC mengontrak sebuah vendor untuk mengembangkan sebuah program penting yang mendukung operasional perusahaan. Setelah proyek selesai, vendor menyerahkan source code program kepada PT. ABC, namun tanpa disertai dokumentasi teknis yang memadai.

Setahun kemudian, seiring dengan perubahan kebutuhan pasar, PT. ABC memutuskan untuk melakukan modifikasi pada salah satu fitur program. Namun, tim internal mengalami kendala besar karena:

- Tidak adanya dokumentasi yang menjelaskan struktur, logika, dan arsitektur program.
- Kesulitan memahami dan mengidentifikasi bagian-bagian kode yang perlu diubah.

Pertanyaan Diskusi:
1. Menurut Anda, apa saja dampak negatif yang mungkin timbul akibat tidak adanya dokumentasi dari vendor?
2. Bagaimana hal ini dapat mempengaruhi operasional dan biaya perusahaan dalam jangka panjang?
3. Solusi apa yang anda sarankan untuk situasi seperti ini ?

Silakan bagikan ide dan solusi inovatif kalian untuk mengatasi masalah ini. Diskusi ini diharapkan tidak hanya memberikan jawaban atas permasalahan saat ini, tetapi juga membuka wawasan tentang best practices dalam pengelolaan proyek perangkat lunak. Selamat berdiskusi dan berkreasi!


## SUBMITTED ANSWER

<div id="post-content-94931776" class="post-content-container" bis_skin_checked="1">
                                        <p><em>Bismillahirrahmanirrahiim</em></p>
<h5>Dampak Negatif Tidak Adanya Dokumentasi</h5>
<p>Tanpa dokumentasi, tim internal PT. ABC harus melakukan <em>reverse engineering</em> dari nol untuk memahami alur program, yang berisiko tinggi karena perubahan kecil bisa merusak fitur lain akibat dependensi antar modul yang tidak terpetakan. Pengetahuan sistem juga mengalami <em>knowledge lock-in</em>, yaitu hanya dimiliki vendor yang sudah tidak terikat kontrak. Selain itu, potensi <em>technical debt</em> dan celah keamanan yang disengaja oleh vendor tidak akan teridentifikasi, serta proses <em>onboarding</em> developer baru menjadi sangat lambat.</p>
<h5>Dampak terhadap Operasional dan Biaya Jangka Panjang</h5>
<p>Secara operasional, waktu modifikasi membengkak signifikan karena sebagian besar <em>man-hour</em> habis untuk memahami kode, bukan untuk <em>coding</em> produktif. Risiko <em>downtime</em> meningkat karena perubahan yang dilakukan berdasarkan asumsi yang keliru bisa menyebabkan kegagalan sistem di produksi. Dari sisi biaya, PT. ABC kemungkinan harus mengeluarkan dana tambahan untuk konsultasi ke vendor lama atau menyewa konsultan eksternal. Skalabilitas sistem juga terhambat karena penambahan fitur baru menjadi tidak aman. Singkatnya, penghematan vendor di awal proyek dibayar jauh lebih mahal oleh PT. ABC di kemudian hari, sebuah fenomena yang mirip dengan konsep <em>technical debt</em>.</p>
<h5>Solusi yang Disarankan</h5>
<p>Untuk<strong> jangka pendek, </strong>harus melakukan&nbsp;<em>reverse documentation</em> secara sistematis dengan memanfaatkan tools seperti <a title="https://www.doxygen.nl/" href="https://www.doxygen.nl/" target="_blank" rel="noreferrer noopener">Doxygen</a> atau <a title="https://www.sphinx-doc.org/en/master/" href="https://www.sphinx-doc.org/en/master/" target="_blank" rel="noreferrer noopener">Sphinx</a> untuk melakukan <em>auto-generate</em> dokumentasi dari kode, dan buat <em>architecture diagram</em> berdasarkan hasil analisis. Opsi lain bisa menggunakan bantuan kecerdasan buatan seperti <a title="https://cursor.com/" href="https://cursor.com/" target="_blank" rel="noreferrer noopener">Cursor</a> atau <a title="https://claude.com/product/claude-code" href="https://claude.com/product/claude-code" target="_blank" rel="noreferrer noopener">Claude Code</a> untuk memindai kode dan membuatkan dokumentasi beserta bagan arsitekturnya secara otomatis, praktik menggunakan kecerdasan buatan inilah yang paling sering saya pribadi lakukan belakangan ini. Paralel dengan itu, negosiasikan kembali dengan vendor untuk menyerahkan dokumentasi sebagai bagian dari <em>deliverable</em> kontrak, serta siapkan lingkungan <em>sandbox</em> sebelum melakukan modifikasi apapun pada sistem produksi.</p>
<p>Adapun untuk <strong>jangka panjang</strong>, perlu memperkuat klausul kontrak vendor di masa depan dengan mewajibkan penyerahan SRS, <em>design document</em>, <em>API documentation</em>, dan manual teknis sebagai syarat pembayaran final. Sesi <em>knowledge transfer</em> formal juga harus diwajibkan sebelum proyek ditutup. Untuk proyek internal, PT. ABC sebaiknya menerapkan <em>Documentation-Driven Development</em> di mana dokumentasi ditulis bersamaan dengan kode, bukan sesudahnya.</p>
<p><em>Source code</em> tanpa dokumentasi ibarat menyusuri jalanan tanpa disertai peta. Dokumentasi bukan sekadar pelengkap, melainkan komponen wajib dari produk perangkat lunak yang matang, sebagaimana ditekankan dalam <a title="https://standards.ieee.org/ieee/830/1221/" href="https://standards.ieee.org/ieee/830/1221/" target="_blank" rel="noreferrer noopener">standar IEEE 830</a> dan PMBOK. Dengan tata kelola kontrak yang ketat dan budaya dokumentasi yang kuat, PT. ABC dapat memastikan perangkat lunaknya menjadi aset jangka panjang, bukan beban operasional.</p>
                                    </div>

## OTHERS

### AZZAHRA AULIA AL QUBRO 053625592

<div class="text_to_html" bis_skin_checked="1">Nama: Azzahra Aulia Al-Qubro<br>
NIM: 053625592<br>
<br>
Menurut saya, kalau vendor tidak memberikan dokumentasi itu dampaknya cukup besar. Soalnya tim internal jadi harus mulai dari nol untuk memahami programnya. Mereka harus baca source code satu persatu, yang belym tentu langsung bisa dipahami. Ini jelas makan waktu dan tenaga.<br>
<br>
Selain itu, risiko kesalahan juga lebih besar. Misalnya salh ubah kode atau tidak sengaja merusak bagian lain dari sistem. Jadi bukannya memperbaiki, malah bisa menambah masalah baru.<br>
<br>
Kalau dilihat dari sisi operasional, pekerjaan jadi lebiih lambat karena tim harauas memahami sistem dulu sebelum melakukan perubahan. Dari sisi biaya juga pasti bertambah, karena butuh waktu lebih lama atau bahkan harus minta bantuan vendor lagi. Dalam jangka panjang, ini bikin perusahaan jadi tidak efisien.<br>
<br>
Untuk solusi, kalau sudah terlanjur seperti ini, menurut saya tim internal bisa bikin dokumentasi sendiri dari code yang ada. Walaupun tidak mudah, tapi ini penting untuk kedepannya. Bisa juga coba komunikasi lagi dengan vendor lama, siapa tahu masih bisa minta penjelasan.<br>
<br>
Ke depannya, perusahaan harus lebih tegas di awal. Misalnya, dokumentasi harus jadi bagian wajib dari hasil proyek, bukan tambahan. Jadi saat proyek selesai, tim mengembangkan sistem lagi.<br>
<br>
Menurut saya, dokumentasi itu penting banget, karena tanpa itu program jadi susah dipahami dan dikembangkan lagi.</div>

### HARUN AYUBA 051262902

<div class="text_to_html" bis_skin_checked="1">Nama : HARUN AYUBA<br>
NIM    : 051262902<br>
<br>
Pertanyaan Diskusi:<br>
Menurut Anda, apa saja dampak negatif yang mungkin timbul akibat tidak adanya dokumentasi dari vendor?<br>
Jawab : <br>
Tidak adanya dokumentasi dapat menimbulkan masalah serius seperti sulitnya pemeliharaan sistem berimbas pada kesulitan memahami alur program sehingga proses perbaikan ataupun pengembangan menjadi tidak sesuai atau menjadi lambat. ketergantungan dengan vendor menjadi msalah serius karena perusahaan akan rugi karena hanya vendor yang memahami sistem secara menyeluruh. Resiko kesalahan tinggi karena tanpa pemahaman yang jelas, serta perubahan kode bisa mengakibatkan bug  atau bahkan merusak sistem yang sudah berjalan<br>
<br>
Bagaimana hal ini dapat mempengaruhi operasional dan biaya perusahaan dalam jangka panjang?<br>
Jawab : <br>
Hal tersebut diatas bisa mempengaruhi operasional dan biaya pemeliharaan perusahaan meningkat karena proses analisis dan debugging lebih lama serta biaya tenaga kerja dan waktu meningkat. Ketergantungan dengan vendor akan mengeluarkan biaya yang lebih tinggi, dikarenakan memanggil vendor kemabali biasanya biaya lebih mahal daripada memanggil vendor di awal.<br>
<br>
Solusi apa yang anda sarankan untuk situasi seperti ini ?<br>
Jawab :<br>
Perusahaan bisa membuat dokumentasi dari source kode yang ada sejak awal penyerahan dari vendor ke perusahaan dan ini bisa dilakukan oleh tim internal perusahaan atau tim IT dengan menggunakan tools atau perangkat pembaca struktur program. Dan perusahaan bisa membuat dokumentasi secara bertahap serta melakukan kontrol dari semua tahapan pada program yang diberikan oleh vendor.</div>

### ADITHYA ILYASA 051545862

<div id="post-content-91125251" class="post-content-container" bis_skin_checked="1">
                                        <div class="text_to_html" bis_skin_checked="1">Berikut merupakan tanggapan saya mengenai diskusi dibawah:<br>
<br>
Perangkat lunak adalah program komputer yang terasosiasi dengan dokumentasinya seperti dokumen teknis, user manual, deployment, dan lainnya. Dokumentasi diperlukan untuk perangkat lunak yang dibuat agar pihak-pihak yang terkait dan berkepentingan untuk mengembangkan perangkat lunaknya nanti bisa mendapatkan pemahaman yang baik mengenai perangkat lunak, sehingga perangkat lunak bisa terus berkembang di masa mendatang.<br>
Dan dokumentasi yang terasosiasi dengan perangkat lunak itu setidaknya berspesifikasi antara lain:<br>
-	Dapat menjadi alat komunikasi antara anggota di dalam tim pengembang<br>
-	Dapat menjadi tempat penyimpanan informasi dari perangkat lunak yang dapat digunakan oleh pengembang yang melakukan pemeliharanan maupun perubahan perangkat lunak<br>
-	Menyediakan informasi terkait manajemen proses penegmbangan perangkat lunak seperti proses perencanaan diantaranya terkait biaya dan jadwal pengerjaan perangkat lunak<br>
-	Harus menginformasikan kepada user tentang bagaimana cara menggunakan perangkat lunak dan mengelola perangkat lunak<br>
<br>
Apabila tidak ada dokumentasi, dampaknya akan cukup serius dalam rekayasa perangkat lunak. Sehingga akan muncul beberapa dampak negatif yang mungkin timbul diantaranya :<br>
-	Waktu pengembangan akan menjadi lebih lama dikarenakan tim pengembang harus memamahi sistem dari kode yang memakan waktu dan tidak selalu akurat <br>
-	Biaya pengembangan akan meningkat. Karena waktu pengembangan lebih lama, maka biaya pengembangan otomatis akan lebih besar <br>
-	Risiko kesalahan tinggi dikarenakan ketiadaan panduan yang jelas, dan perubahan juga bisa merusak fungsi lain seperti munculnya bug baru<br>
-	Akan terjadi ketergantungan tinggi pada vendor atau pembuat perangkat lunak awal<br>
-	Kualitas perangkat lunak akan menurun. Dikarenakan perubahan yang tidak terarah, itu akan membuat sistem makin tidak stabil dan sulit untuk dirawat<br>
<br>
Dalam dampak negatif tadi, disebutkan bahwa dampak ketiadaan dokumentasi akan mempengaruhi biaya pengembangan yang dilakukan oleh perusahaan. Karena tim pengembang harus menghabiskan lebih banyak waktu untuk memahami sistem melalui kode secara langsung (reverse engineering) yang mana itu tidak efisien dan sering menimbulkan kesalahpahaman. Sehingga yang seharusnya tim pengembang bisa produktif dengan mengembangkan perangkat lunak dengan penambahan beberapa fitur, yang terjadi tidak demikian.<br>
Selain itu, tanpa panduan yang jelas, perubahan pada sistem akan beresiko menimbulkan bug baru sehingga membutuhkan tambahan waktu untuk perbaikan debugging dan bahkan pengerjaan ulang. Dan dalam kasus tertentu, terkadang perusahaan juga perlu merekrut tenaga ahli atau konsultan dengan biaya lebih tinggi untuk membantu memahami sistem yang ada, sehingga secara keseluruhan biaya pengembangan yang dikeluarkan oleh perusahaan ini akan menjadi lebih besar.<br>
<br>
Solusi yang disarakan untuk situasi dimana perusahaan PT ABC yang ingin melakukan pengembangan atau modifikasi, namun tidak memiliki dokumentasi atas perangkat lunak adalah dengan :<br>
-	Melakukan code analysis (reverse engineering). Tim mempelajari kdoe sumber untuk memamahi fungsi dan alur sistem sebelum melakukan perubahan.<br>
-	Membuat dokumentasi minimal (baseline dokumentation). Fokus pada bagian yang akan dimodifikasi sepeti alur proses dan struktur modul agar perubahan lebih terarah.<br>
-	Melakukan testing sebelum dan sesudah perubahan. Testing digunakan untuk memastikan perubahan tidak merusak fungsi yang sudah ada.<br>
-	Menggunakan pendekatan incremental (bertahap). Modifikasi dilakukan sedikit demi sedikit untuk meminimalisir kesalahan dan mengontrol risiko kesalahan.<br>
-	Membangun dokumentasi sembari berjalan. Setiap perubahan langsung didokumentasikan agar kedepan nanti sistem lebih mudah dikembangkan.<br>
<br>
Sumber :<br>
Modul MSIM4303 Rekayasa Perangkat Lunak. Modul 2 Halaman 14-15<br>
Sommerville, I. (2016). Software Engineering (10th ed.). Pearson<br>
Pressman, R. S., &amp; Maxim, B. R. (2020). Software Engineering: A Practitioner’s Approach (9th ed.). McGraw-Hill</div>
                                    </div>
