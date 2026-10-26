# 1. Menyiapkan wadah penyimpanan untuk total jumlah
jumlah_genap <- 0

# 2. Memulai perulangan for dari angka 1 sampai 100
for (i in 1:100) {
  
  # 3. Memeriksa apakah bilangan saat ini adalah bilangan genap
  if (i %% 2 == 0) {
    # 4. Jika genap, tambahkan bilangan tersebut ke total jumlah
    jumlah_genap <- jumlah_genap + i
  }
  
}

# 5. Menampilkan hasil perhitungan akhir
print(jumlah_genap)