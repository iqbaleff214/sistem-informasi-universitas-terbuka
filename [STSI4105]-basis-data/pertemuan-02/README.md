# Konsep Basis Data

## Pengertian Basis Data

Seluruh data yang disimpan dalam sebuah basis data ditempatkan pada masing-masing _file_ sesuai dengan fungsinya. Dengan tersimpannya data dalam basis data tersebut, maka akan dengan mudah dapat melakukan penelusuran data yang diinginkan sehingga berdampak pada waktu pencarian yang lebih efisien.

**Basis** dapat diartikan sebagai markas atau gudang atau tempat bersarang atau tempat berkumpul.

**Data** dapat diartikan sebagai referensi fakta dunia nyata yang mewakili suatu objek seperti manusia (pegawai, siswa, pembeli, pelanggan), barang, hewan, peristiwa, konsep, keadaan, dan sebagainya. Objek tersebut direkam dalam bentuk angka, huruf, simbol, teks, gambar, bunyi, atau kombinasi.

## Manfaat Basis Data

Basis data bermanfaat untuk pengelolaa ndata dalam memudahkan atau menemukan kembali data yang dicari dengan cepat.

## Tujuan Basis Data

- **_Speed_ (Kecepatan dan Kemudahan)**: dengan basis data kita dapat menyimpan data atau melakukan perubahan, penghapusan, penambahan, dan pemanggilan kembali data yang tersimpan dengan cepat dan mudah.
- **_Space_ (Efisiensi Ruang Penyimpanan)**: dengan basis data penggunaan ruang penyimpanan data dapat dilakukan dengan meminimalisir jumlah pengulangan data dan menerapkan sejumlah pengkodean.
- **_Accuracy_ (Keakuratan)**: dengan memanfaatkan pengkodean atau pembentukan relasi antar data, penerapan aturan atau batasan tipe data dapat diterapkan dalam basis data yang berguna untuk menentukan keakuratan saat input data atau penyimpanan data.
- **_Security_ (Keamanan)**: sejumlah sistem (aplikasi) pengelolaan basis data tidak menerapkan aspek keamanan dalam penggunaannya. Akan tetapi, untuk sistem yang besar dan serius, aspek keamanan menjadi hal yang penting untuk diterapkan. Dengan begitu, sistem dapat menentukan siapa yang boleh menggunakan basis data dan menentukan jenis operasi-operasi apa saja yang boleh dilakukan.
- **_Consistency_ (Terpeliharanya Keselarasan Data)**: apabila ada perubahan data pada aplikasi yang berbeda, secara otomatis perubahan itu berlaku untuk keseluruhan.
- **_Shareability_ (Kebersamaan Pemakaian)**: data dapat dipakai secara bersama-sama oleh beberapa program aplikasi saat bersamaan.
- **_Standardization_ (Dapat Diterapkan Standarisasi)**: dengan adanya pengontrolan yang terpusat, basis data dapat menerapkan standarisasi data yang disimpan sehingga memudahkan pemakaian, distribusi, maupun pertukaran data.
- **_Availability_ (Ketersediaan)**: basis data dapat memilah data utama atau master, transaksi, data history hingga data kedaluwarsa. Data yang jarang atau tidak digunakan lagi dapat diatur untuk dipisahkan dari sistem basis data yang aktif.
- **_Completeness_ (Kelengkapan)**: kelengkapan sebuah data bersifat relatif, dalam sebuah basis data penilaian kelengkapan data sangat bergantung pada pengguna sehingga penilaian tidak selalu sama.

## Kelebihan Basis Data

- Dapat meningkatkan kemandirian data. Sebuah basis data dapat digunakan untuk bermacam-macam program aplikasi tanpa harus mengubah format data yang sudah ada.
- Konsistensi data. Konsistensi data di dalam basis data dilakukan dengan cara data disimpan hanya sekali dalam basis data sehingga jika terjadi perubahan pada nilai data tersebut, perubahan hanya dilakukan satu kali dan nilai baru tersebut akan tersedia untuk semua pengguna.
- Meningkatkan aksesibilitas terhadap data dan respon yang lebih baik. Dengan basis data maka aksesibilitas data dan respon akan lebih baik. Hal tersebut dapat dicapai dengan integrasi data yang melewati batasan-batasan departemen dalam organisasi sehingga data dapat langsung diakses oleh pengguna.
- Pengendalian terhadap kerangkapan data. Data dalam sebuah basis data dilakukan penyimpanan dengan cara disimpan satu kali. Hal ini mengurangi kerangkapan data dan mengurangi biaya untuk tempat penyimpanan.
- Meningkatkan keamanan data. Keamanan basis data dapat melindungi basis data dari pengguna yang tidak memiliki otorisasi. Basis data dapat menentukan batasan-batasan pengaksesan data, misalnya dengan memberikan password dan pemberian hak akses bagi pemakai (misalnya untuk hak akses dalam proses update, delete, insert, maupun select).
- Memperbaiki integritas data. Intergritas data mengacu pada validitas dan konsistensi dari data yang disimpan. Integritas biasanya diekspresikan dalam batasan (constraints) yang merupakan aturan yang konsisten dan tidak dapat dilanggar. Jika kerangkapan data dapat dikontrol dan kekonsistenan data dapat dijaga, maka data menjadi akurat.
- Data dapat dipakai secara bersama-sama. Data yang ada pada basis data menjadi milik seluruh organisasi dan dapat dipakai secara bersama oleh pengguna yang berwenang pada saat bersamaan.
- Memperoleh lebih banyak informasi dari data yang sama. Pengguna basis data dapat memperoleh informasi selain dari informasi rutin yang dikelolanya karena semua data lain berada dalam basis data yang sama. Dengan demikian, kebutuhan akan informasi selain dari informasi rutin dapat terpenuhi.

## Kekurangan Basis Data

- Biayanya dapat menjadi sangat mahal karena menyangkut biaya-biaya untuk pembelian sekaligus perawatan hardware dan software. Selain itu, terdapat juga biaya tambahan untuk untuk penyimpanan (storage), jaringan (network), dan lain-lain.
- Rumit. Perancang, pengembang, Data Base Administator (DBA), dan pengguna akhir harus memahami secara rinci dan mendalam tentang fungsi basis data yang ditangani agar dapat mengambil manfaat dari basis data. Kegagalan dalam memanfaatkannya dapat menyebabkan kerugian yang cukup besar bagi organisasi atau perusahaan.
- Tambahan biaya konversi. Diperlukan biaya yang besar untuk berpindah dari aplikasi atau sistem yang lama ke dalam sistem basis data yang baru. Selain itu, diperlukan pula biaya untuk pelatihan staf dalam menggunakan sistem yang baru ini serta tambahan biaya untuk mempekerjakan staf khusus seperti DBA, dan lain-lain.

## Tingkatan Data dalam Basis Data Relasi

## Operasi Data Basis Data

- `CREATE DATABASE`
- `DROP DATABASE`
- `CREATE TABLE`
- `DROP TABLE`
- `INSERT`
- `SELECT`
- `UPDATE`
- `DELETE`

## Penerapan Basis Data

- Kepegawaian: untuk berbagai perusahaan yang memiliki banyak pegawai.
- Pergudangan (inventory): untuk perusahaan manufaktur (pabrikan), grosir (reseller), apotik, dan lain-lain.
- Akuntansi: untuk berbagai perusahaan.
- Reservasi: untuk hotel, pesawat, kereta api, dan lain-lain.
- Layanan Pelanggan (customer care): untuk perusahaan yang berhubungan dengan banyak pelanggan (bank, konsultan, dan lain-lain)

## Klasifikasi DBMS

1. Klasifikasi Berdasarkan Model Data
2. Klasifikasi Berdasarkan Jumlah Pengguna
3. Klasifikasi Berdasarkan Sistem Distribusi

## Abstraksi Data

### _Physical Level_ (Level Fisik)

Level fisik merupakan lapisan terendah. Lapisan ini menjelaskan bagaimana (_how_) data sesungguhnya disimpan. Pada lapisan inilah struktur data dijabarkan secara terperinci.

### _Conceptual Level_ (Level Logika/Konsep)

Level konseptual lebih tinggi dari lapisan fisik. Lapisan ini menjabarkan data apa (_what_) saja yang sesungguhnya disimpan pada basis data dan juga menjabarkan hubungan-hubungan antar data secara keseluruhan. Seorang pengguna dalam level ini dapat mengetahui bahwa data mahasiswa disimpan pada tabel mahasiswa, tabel KRS, tabel transkrip, dan lain sebagainya. Level ini biasa dipakai oleh DBA (Database Administrator). 

### _View Level_ (Level Pandangan)

Level pandangan merupakan lapisan tertinggi pada abstraksi data. Pada lapisan ini pengguna hanya mengenal struktur data sederhana yang berorientasi pada kebutuhan pengguna. Data yang dikenal oleh setiap pengguna bisa berbeda-beda dan barangkali hanya mencakup sebagian dari basis data. Misalnya, bagian keuangan hanya membutuhkan data keuangan, jadi yang digambarkan hanya pandangan terhadap data keuangan saja. Begitu juga dengan bagian akuntansi, hanya membutuhkan data akuntansi. Jadi, tidak semua pengguna basis data membutuhkan seluruh informasi yang terdapat dalam basis data tersebut.

## Sistem Informasi

Dalam pengembangan sistem informasi diperlukan basis data sebagai media penyimpan data untuk menghasilkan informasi secara tepat, akurat, dan bermanfaat.

Sistem informasi merupakan kombinasi teratur dari manusia, _hardware_, _software_, jaringan komunikasi, dan sumber daya data, yang mengumpulkan, mengubah, dan menyebarkan informasi dalam sebuah organisasi.

## DBMS

- Traditional File Base System
- Database Management System

