# 1. Membuat urutan nilai x dari -3 sampai 3 dengan panjang 300
x <- seq(-3, 3, length.out = 300)

# 2. Menghitung nilai fungsi kepadatan peluang (density)
density <- dnorm(x)

# 3. Membuat plot kurva normal
plot(x, density,
     type = "l", xlab = "x", ylab = "density", main = "Kurva Normal")

# 4. Menandai garis sumbu x dengan warna merah
abline(h = 0, col = "red")
