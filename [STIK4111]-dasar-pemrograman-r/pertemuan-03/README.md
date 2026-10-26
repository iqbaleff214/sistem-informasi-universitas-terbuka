# Sesi 3

## Struktur dan Manipulasi Objek di R

Berdasarkan materi yang telah dilampirkan, berikut adalah uraian akademis mengenai cara mengonstruksi, mengelola, dan memanipulasi berbagai tipe objek dasar di dalam ekosistem pemrograman R.

### 1. Konstruksi Berbagai Tipe Objek

Bahasa R memungkinkan pembuatan berbagai jenis objek fungsional menggunakan perintah-perintah yang spesifik.

* **Vector (Vektor)**
Digunakan untuk menampung satu baris deret kumpulan bilangan atau karakter, menjadi satu kesatuan variabel.


* `c(...)`: Menggabungkan (*concatenate*) sekumpulan angka atau teks secara bebas.


* `seq(...)`: Menciptakan barisan bilangan dengan interval tertentu yang simetris dan teratur.


* `rep(...)`: Menciptakan vektor melalui pengulangan (*replikasi*) bilangan atau vektor dasar.


* `paste(...)`: Menggabungkan atau merangkai teks/karakter dari dua atau lebih vektor.




* **Factor (Faktor)**
Struktur data untuk mengakomodasi variabel bernilai diskrit atau kategorik.


* `factor(...)`: Digunakan untuk kategorik berskala *nominal*, di mana level/kategori tidak memiliki urutan atau tingkatan (contoh: status kelulusan, gender).


* `ordered(...)`: Digunakan untuk kategorik berskala *ordinal*, di mana hierarki urutan level data diperhitungkan (contoh: SD < SMP < SMA).




* **Matrix (Matriks)**
Vektor dua dimensi (memiliki atribut jumlah baris dan kolom) yang menyimpan data numerik seragam.


* `matrix(data, nrow, ncol, byrow)`: Membentuk matriks dengan ukuran spesifik. Jika parameter `byrow = TRUE`, elemen akan disusun secara horizontal per baris; jika `FALSE`, akan disusun vertikal per kolom.




* **Data Frame**
Struktur tabular (baris dan kolom) di mana setiap kolom (vektor) wajib memiliki ukuran panjang (*length*) yang selaras, namun boleh memiliki jenis/mode tipe data yang berbeda-beda.


* `data.frame(...)`: Membangun *data frame* dari satu atau beberapa vektor. Jika ada komponen vektor yang lebih pendek, sistem akan otomatis melakukan daur ulang (*recycling*) elemen hingga barisnya setara.




* **List**
Wadah berukuran fleksibel yang dirancang untuk menampung berbagai komponen yang memiliki perbedaan bentuk, tipe data, maupun panjang elemen tanpa batasan struktur homogen.


* `list(...)`: Membangun objek campuran dalam satu hierarki struktur.




* **Time Series (`ts`)**
Deret observasi numerik yang ditata berdasarkan kronologi urutan waktu atau periode frekuensi.


* `ts(..., frequency, start)`: Menyatakan vektor sebagai objek deret waktu. Argumen `start` menentukan titik awal pencatatan (seperti tahun, bulan), sedangkan `frequency` menentukan jenis rentang waktu (misalnya `12` untuk data bulanan, `4` untuk kuartalan).





### 2. Mekanisme Pengindeksan Objek (Subsetting)

Dalam R, proses penarikan atau ekstraksi elemen/nilai spesifik dari dalam objek (*subsetting*) dilakukan menggunakan tanda kurung siku `[...]` yang dioperasikan pada koordinat vektor atau matriks:

* **Akses Vektor:** `x[2]` akan menarik atau menggantikan (jika diberi nilai baru) secara khusus elemen pada urutan ke-2 di dalam vektor `x`.


* **Akses Matriks/Data Frame:** `y[2,]` mengekstraksi seluruh elemen dalam baris ke-2; `y[,3]` mengekstraksi seluruh elemen kolom ke-3; dan `y[2,1]` menunjuk tepat pada persimpangan antara baris ke-2 dan kolom ke-1.



### 3. Konversi dan Validasi Identitas Objek

Struktur data dapat dievaluasi logikanya dan diubah identitas strukturnya melalui perintah-perintah berikut:

* **Manipulasi Komparasi/Validasi:** Operator seperti `==` (kesamaan nilai), `<=`, `>=`, serta fungsi `identical(...)` dan `all.equal(...)` dipakai untuk mengonfirmasi kesetaraan logika antar-objek (menghasilkan nilai `TRUE`/`FALSE`).


* **Konversi/Transmutasi Mode (Coercion):** Fungsi bawaan seperti `as.numeric()`, `as.logical()`, dan `as.character()` difungsikan secara paksa untuk mengonversi suatu himpunan objek dari satu sifat data ke sifat data yang lainnya.