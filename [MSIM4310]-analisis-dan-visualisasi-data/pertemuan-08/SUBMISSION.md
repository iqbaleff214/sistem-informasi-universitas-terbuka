## INSTRUCTION

Gunakan informasi berikut untuk menjawab pertanyaan.
- Perhatikan Dataset pada [file excel](data_pendapatan.xlsx) (Kolom Pendapatan Nilai asli dikalikan 10.000)
- Instal paket berikut jika belum terinstal, lalu load paket menggunakan fungsi `library()`.

    ```shell
    install.packages("ggplot2")
    install.packages("dplyr")
    install.packages("broom")
    install.packages("ggpubr")
    library(ggplot2)
    library(dplyr)
    library(broom)
    library(ggpubr)
    ```
Lakukan regresi linear sederhana dengan mengiktui langkah-langkah berikut.
1. Gunakan (plot) histogram untuk cek apakah variabel terikat berdistribusi normal atau tidak. Jelaskan interpretasi histogram tersebut! (10 poin)
2. Gunakan scatter plot untuk cek apakah variabel terikat dan bebas memiliki hubungan linear. Interpretasikan hasil grafik tersebut! (10 poin)
3. Lakukan regresi linear sederhana dan jelaskan hasil regresi tersebut! (20 poin)
4. Gunakan perintah plot(nama variabel regresi kalian) untuk cek homoskedastisitas. Interpretasikan hasil plot (20 poin).
5.  Visualisasikan hasil regresi menggunakan grafik dengan langkah-langkah berikut:
    1. Plot data points pada grafik (10 poin)
    2. Tambahkan garis regresi linear pada data yang sudah diplot (10 poin)
    3. Tambah persamaan untuk garis linear (10 poin)
    4. Beri judul dan label yang sesuai untuk sumbu x dan y (10 poin)

## SUBMITTED ANSWER

[Script](main.R)