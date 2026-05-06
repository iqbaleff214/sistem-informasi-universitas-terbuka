## INSTRUCTION

Silakan berdiskusi mengenai bagaimana penerapan teknologi cloud computing dapat memengaruhi model bisnis suatu organisasi. Diskusikan keuntungan dan kerugian dari penggunaan cloud computing dalam konteks perubahan model bisnis organisasi.

Jelaskan secara lebih rinci dengan mengacu pada Modul 3 KB 1 dan 2 Buku Materi Pokok (BMP) Tata Kelola Teknologi Informasi (MSIM4402).

## SUBMITTED ANSWER

_Bismillahirrahmanirrahim_

Cloud computing telah menjadi salah satu pendorong utama transformasi model bisnis di berbagai organisasi modern. Sebagai seorang software engineer yang pernah bekerja di perusahaan startup berbasis SaaS dan sangat bergantung pada layanan cloud, saya merasakan langsung bagaimana teknologi ini mengubah cara organisasi merancang produk, melayani pelanggan, dan menghasilkan pendapatan.

Sebelum era cloud, banyak perusahaan menjual perangkat lunak dalam bentuk lisensi one-time purchase yang harus diinstal di server pelanggan ataupun on-premise server. Model ini mahal di awal dan sulit di-maintain. Hadirnya cloud computing memungkinkan pergeseran ke model Software as a Service (SaaS) dengan skema langganan bulanan atau tahunan. Perusahaan seperti Microsoft beralih dari menjual Office dalam bentuk CD ke layanan Microsoft 365 berbasis langganan, dan Adobe melakukan hal serupa dengan Creative Cloud-nya. Pergeseran ini tidak hanya mengubah arus pendapatan menjadi lebih stabil dan dapat diprediksi (recurring revenue), tetapi juga mengubah hubungan dengan pelanggan menjadi lebih jangka panjang.

Di tempat saya bekerja dulu, seluruh produk dibangun di atas AWS dan kami mengandalkan layanan seperti EC2, RDS,  dan S3. Tanpa cloud, sangat sulit sebuah startup kecil bisa melayani ribuan pengguna dengan tim engineering yang ramping. Kami bisa men-deploy fitur baru ke produksi dalam hitungan menit, scaling otomatis ketika trafik melonjak, dan hanya membayar sesuai pemakaian (pay-as-you-go). Hal ini memungkinkan model bisnis yang agile, eksperimental, dan customer-centric yang mana merupakan sesuatu yang sulit dicapai dengan infrastruktur on-premise tradisional.

Ada beberapa keuntungan yang didapat saat menggunakan cloud, di antaranya:

1. Efisiensi biaya. Model pembayaran pay-as-you-go memungkinkan organisasi menghindari belanja modal besar untuk server dan infrastruktur fisik.
2. Skalabilitas. Layanan dapat diperbesar atau diperkecil sesuai kebutuhan, sangat cocok untuk bisnis dengan trafik fluktuatif seperti e-commerce yang menghadapi flash sale.
3. Kecepatan inovasi. Tim engineering bisa fokus pada pengembangan produk tanpa repot mengelola infrastruktur fisik.
4. Aksesibilitas global di mana pengguna dari mana saja dapat mengakses layanan tanpa hambatan geografis, yang membuka peluang ekspansi pasar internasional.
5. Kemudahan kolaborasi, karena tim yang tersebar di berbagai lokasi dapat bekerja pada platform yang sama secara real-time.

Namun cloud computing juga memiliki sisi gelap yang tidak boleh diabaikan, yakni:

1. Ketergantungan pada vendor (vendor lock-in). Berdasarkan pengalaman, memindahkan beban kerja dari satu penyedia cloud ke penyedia lain sangatlah kompleks dan mahal, terutama jika sudah banyak menggunakan layanan proprietary seperti AWS Lambda atau DynamoDB.
2. Risiko keamanan dan kebocoran data. Insiden seperti kebocoran data BPJS Kesehatan dan beberapa platform e-commerce di Indonesia menjadi pengingat bahwa data di cloud tetap rentan jika tata kelolanya lemah.
3. Ketergantungan pada konektivitas internet, yang masih menjadi tantangan di banyak wilayah Indonesia.
4. Biaya yang bisa membengkak tak terduga. Saya sering menemui kasus tagihan AWS membengkak drastis hanya karena salah konfigurasi auto-scaling atau lupa mematikan resource yang tidak terpakai, terlebih di AWS sendiri banyak hidden cost yang bisa saja luput dari perhatian kita.

Menurut saya, cloud computing bukan sekadar perubahan teknis, melainkan pergeseran paradigma dalam cara organisasi menjalankan bisnis. Bagi startup, cloud adalah penyelamat yang mana tanpanya kami akan kesulitan untuk bisa bersaing dengan perusahaan besar. Namun cloud bukan solusi ajaib; tata kelola TI yang matang tetap diperlukan untuk memastikan biaya terkendali dan data terlindungi. Organisasi yang berhasil adalah yang mampu memanfaatkan keuntungan cloud sembari memitigasi kerugiannya melalui strategi multi-cloud, cost optimization berkala, serta penerapan prinsip security by design sejak tahap perancangan produk.

Sumber Referensi:
- Inayatullah. (2025). Tata Kelola Tekonologi Informasi. Universitas Terbuka.
- Marston, S., Li, Z., Bandyopadhyay, S., Zhang, J., & Ghalsasi, A. (2011). Cloud computing — The business perspective. Decision Support Systems, 51(1), 176–189.

## OTHERS

### FILEMON FAJAR KUSUMA 018142073

<div id="post-content-103963242" class="post-content-container" bis_skin_checked="1">
                                        <p><strong>Mohon ijin menjawab,</strong></p>
<p>Menurut saya, penerapan <em>cloud computing</em> membawa perubahan fundamental pada model bisnis organisasi, terutama dengan mengubah struktur biaya dari belanja modal (CapEx) yang berat di awal menjadi biaya operasional (OpEx) yang lebih fleksibel. Dengan teknologi awan, organisasi tidak perlu lagi berinvestasi pada server fisik yang mahal, melainkan cukup "menyewa" infrastruktur sesuai kebutuhan (<em>pay-as-you-go</em>). Hal ini memungkinkan model bisnis menjadi lebih lincah (<em>agile</em>), di mana perusahaan kecil sekalipun bisa memiliki kapasitas komputasi setara perusahaan besar, sehingga mempercepat inovasi dan waktu peluncuran produk ke pasar (<em>time-to-market</em>). Secara strategis, organisasi bisa lebih fokus pada kompetensi inti mereka daripada menghabiskan energi untuk mengelola kerumitan infrastruktur IT secara mandiri.</p>
<p>Namun, transisi ke model bisnis berbasis <em>cloud</em> ini bagaikan pisau bermata dua. Keuntungan utamanya meliputi skalabilitas yang tinggi, kemudahan akses data dari mana saja untuk mendukung kerja jarak jauh, serta efisiensi biaya perawatan. Di sisi lain, terdapat kerugian dan risiko yang patut diwaspadai, seperti ketergantungan penuh pada penyedia layanan (<em>vendor lock-in</em>) yang membuat organisasi sulit berpindah platform. Selain itu, masalah privasi dan keamanan data menjadi tantangan serius, karena kendali atas data sensitif kini berada di tangan pihak ketiga. Jika terjadi gangguan pada koneksi internet atau layanan penyedia awan tumbang, operasional bisnis bisa terhenti seketika, yang pada akhirnya dapat mengganggu stabilitas model bisnis yang telah dibangun.</p>
<p><strong>Sumber Referensi:</strong></p>
<ul>
<li>
<p><span>Modul 3 KB 1 dan 2 Buku Materi Pokok (BMP) Tata Kelola Teknologi Informasi (MSIM4402).</span></p>
</li>
<li>
<p>Osterwalder, A., &amp; Pigneur, Y. (2010). <em>Business Model Generation: A Handbook for Visionaries, Game Changers, and Challengers</em>. John Wiley &amp; Sons.</p>
</li>
<li>
<p>Mell, P., &amp; Grance, T. (2011). <em>The NIST Definition of Cloud Computing</em>. National Institute of Standards and Technology.</p>
</li>
<li>
<p>Weinhardt, C., et al. (2009). <em>Cloud Computing – A Classification, Business Models, and Determinants</em>. Business &amp; Information Systems Engineering.</p>
</li>
</ul>
                                    </div>

### 054412677 DICKY ANDISRA

<div class="text_to_html" bis_skin_checked="1">1. Pengaruh Cloud Computing terhadap Model Bisnis<br>
Cloud computing mendefinisikan ulang cara organisasi menciptakan dan memberikan nilai. Pengaruh utamanya meliputi:<br>
•	Agilitas Bisnis: Organisasi dapat merespons perubahan pasar dengan cepat. Jika bisnis membutuhkan kapasitas server tambahan untuk kampanye pemasaran, cloud memungkinkan penyediaan sumber daya secara instan tanpa harus menunggu proses pengadaan perangkat keras fisik yang memakan waktu berbulan-bulan.<br>
•	Demokratisasi Teknologi: Usaha Kecil Menengah (UKM) kini memiliki akses ke infrastruktur setingkat perusahaan besar (enterprise) tanpa harus membangun pusat data (Data Center) sendiri.<br>
•	Fokus pada Kompetensi Inti: Dengan menyerahkan pengelolaan infrastruktur kepada penyedia cloud (seperti AWS, Azure, atau Google Cloud), organisasi dapat mengalihkan sumber daya manusianya untuk fokus pada inovasi produk dan layanan pelanggan, bukan lagi pada pemeliharaan rutin server.<br>
2. Keuntungan Penggunaan Cloud Computing<br>
Dalam konteks perubahan model bisnis, keuntungan yang paling menonjol menurut prinsip tata kelola TI adalah:<br>
•	Efisiensi Biaya (Cost Efficiency): Mengubah struktur biaya dari biaya tetap yang besar di awal menjadi biaya variabel yang dibayar sesuai pemakaian (Pay-as-you-go). Hal ini memperbaiki arus kas (cash flow) organisasi.<br>
•	Skalabilitas dan Elastisitas: Kemampuan untuk memperbesar (scale up) atau memperkecil (scale down) kapasitas TI secara otomatis sesuai dengan permintaan beban kerja.<br>
•	Aksesibilitas dan Kolaborasi: Mendukung model bisnis kerja jarak jauh (remote work) dan kolaborasi lintas geografis, karena data dan aplikasi dapat diakses dari mana saja melalui internet.<br>
•	Keandalan (Reliability): Penyedia cloud biasanya memiliki tingkat ketersediaan (uptime) yang sangat tinggi dan sistem pencadangan (backup) otomatis yang lebih baik daripada yang bisa dibangun oleh organisasi rata-rata secara mandiri.<br>
3. Kerugian dan Risiko Cloud Computing<br>
Meskipun menawarkan banyak keunggulan, terdapat risiko dan kerugian yang harus dimitigasi dalam kerangka tata kelola:<br>
•	Ketergantungan pada Penyedia (Vendor Lock-in): Sangat sulit dan mahal bagi organisasi untuk memindahkan data atau aplikasi dari satu penyedia cloud ke penyedia lain karena perbedaan standar teknis.<br>
•	Isu Keamanan dan Privasi Data: Menempatkan data sensitif di infrastruktur pihak ketiga menimbulkan kekhawatiran terkait kedaulatan data dan potensi akses tidak sah, terutama bagi organisasi yang terikat regulasi ketat (seperti perbankan).<br>
•	Ketergantungan pada Konektivitas Internet: Performa sistem sepenuhnya bergantung pada stabilitas jaringan internet. Gangguan pada koneksi berarti gangguan total pada operasional bisnis.<br>
•	Kehilangan Kendali Langsung: Karena infrastruktur dikelola pihak luar, tim IT internal memiliki kontrol yang terbatas atas pembaruan sistem atau konfigurasi fisik perangkat keras.<br>
Analisis Strategis berdasarkan Tata Kelola TI<br>
Berdasarkan materi pada Modul 3 KB 1 dan 2 MSIM4402, penerapan cloud harus selaras dengan strategi bisnis. Tata kelola yang baik mengharuskan organisasi untuk:<br>
1.	Melakukan Analisis Risiko: Menimbang antara penghematan biaya dengan risiko keamanan data.<br>
2.	Pemilihan Model Layanan yang Tepat: Apakah organisasi lebih membutuhkan Infrastructure as a Service (IaaS), Platform as a Service (PaaS), atau Software as a Service (SaaS) sesuai dengan kapabilitas internal yang dimiliki.<br>
3.	Kepatuhan (Compliance): Memastikan penyedia cloud mematuhi regulasi hukum yang berlaku di wilayah operasional organisasi.<br>
Penerapan cloud pada akhirnya memaksa organisasi untuk bermigrasi dari model bisnis yang kaku menjadi model bisnis yang lebih dinamis dan berbasis platform.<br>
Dari kedua sisi tersebut (keuntungan vs kerugian), menurut Anda faktor manakah yang paling sering menjadi penghambat bagi organisasi di Indonesia dalam mengadopsi teknologi cloud secara penuh?</div>

### ANGGA PUTRA RIYADI 048112982

<div class="text_to_html" bis_skin_checked="1">Izin menjawab diskusi pada sesi kali ini, terima kasih.<br>
<br>
Penerapan cloud computing telah mengubah model bisnis organisasi dari yang sebelumnya berorientasi pada investasi infrastruktur besar (capital expenditure) menjadi model yang lebih fleksibel dan berbasis layanan (operational expenditure). Melalui skema pay-as-you-go, organisasi tidak lagi harus membangun dan memelihara infrastruktur teknologi secara mandiri, melainkan memanfaatkan layanan berbasis internet yang disediakan oleh pihak ketiga. <br>
Dalam dunia bisnis, cloud computing memberikan beberapa pengaruh strategis. Pertama, organisasi dapat meluncurkan layanan lebih cepat karena tidak perlu membangun infrastruktur fisik dari awal. Kedua, kemampuan skalabilitas memungkinkan perusahaan untuk menyesuaikan kapasitas sumber daya sesuai dengan permintaan pasar, sehingga model bisnis menjadi lebih agile dan responsif. Ketiga, akses terhadap data dan aplikasi secara real-time dari berbagai lokasi mendukung kerja jarak jauh, kolaborasi tim, serta operasi lintas wilayah. Hal ini juga memungkinkan perusahaan memperluas pasar dan mempercepat time to market, sehingga cloud computing tidak hanya berfungsi sebagai teknologi pendukung, tetapi juga sebagai enabler inovasi model bisnis .<br>
Keuntungan cloud computing <br>
•	Memberikan efisiensi biaya yang signifikan karena perusahaan tidak perlu melakukan investasi besar pada perangkat keras maupun perangkat lunak.<br>
•	Biaya operasional menjadi lebih terkendali karena hanya membayar sumber daya yang digunakan.<br>
•	Cloud computing juga menawarkan fleksibilitas dan skalabilitas tinggi, di mana kapasitas dapat ditingkatkan atau diturunkan sesuai kebutuhan bisnis.<br>
•	Aksesibilitas yang tinggi memungkinkan pengguna mengakses data kapan saja dan di mana saja, sehingga meningkatkan produktivitas dan kolaborasi<br>
Kerugian penggunaan clound computing<br>
•	Ketergantungan pada koneksi internet menjadi salah satu tantangan utama, karena gangguan jaringan dapat menghambat operasional bisnis.<br>
•	Risiko keamanan dan privasi data menjadi perhatian penting karena data disimpan di lingkungan pihak ketiga, sehingga memerlukan pengelolaan keamanan yang ketat.<br>
•	Ketergantungan pada penyedia layanan (vendor lock-in) juga dapat menyulitkan organisasi dalam melakukan migrasi ke platform lain, sebagaimana dijelaskan dalam jurnal terkait keterbatasan interoperabilitas antar penyedia cloud .<br>
•	Biaya penggunaan cloud berpotensi meningkat jika tidak dikontrol dengan baik, terutama akibat penggunaan sumber daya yang berlebihan atau biaya transfer data.<br>
<br>
Referensi:<br>
-	Modul 3 KB 1 dan 2 Buku Materi Pokok (BMP) Tata Kelola Teknologi Informasi (MSIM4402).<br>
-	Cloudeka. (2025). Kelebihan dan kekurangan cloud computing: Panduan untuk bisnis. Retrieved from <a href="https://www.cloudeka.id/id/berita/cloud/kelebihan-dan-kekurangan-cloud-computing-panduan-untuk-bisnis/" class="_blanktarget">https://www.cloudeka.id/id/berita/cloud/kelebihan-dan-kekurangan-cloud-computing-panduan-untuk-bisnis/</a> <br>
-	XLSMART. (2025). Peran cloud computing dalam bisnis. Retrieved from <a href="https://www.xlsmart.co.id/bisnis/id/insights/article/peran-cloud-computing-dalam-bisnis/" class="_blanktarget">https://www.xlsmart.co.id/bisnis/id/insights/article/peran-cloud-computing-dalam-bisnis/</a> <br>
-	Tandy, J., &amp; Siswono. (2013). Cloud computing dan dampaknya terhadap bisnis. Retrieved from <a href="https://media.neliti.com/media/publications/166102-ID-cloud-computing-dan-dampaknya-terhadap-b.pdf" class="_blanktarget">https://media.neliti.com/media/publications/166102-ID-cloud-computing-dan-dampaknya-terhadap-b.pdf</a></div>
