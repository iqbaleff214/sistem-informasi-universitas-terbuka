speed <- c(4, 4, 7, 7, 8, 8, 9, 10, 10, 11, 11, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14, 15, 15, 15, 16, 16, 17, 17, 17, 17, 17, 18, 18, 18, 19, 19, 20, 20, 20, 20, 20, 21, 22, 23, 24, 24, 24, 25, 25)
distance <- c(2, 10, 4, 20, 17, 13, 18, 28, 33, 18, 26, 12, 24, 22, 28, 24, 32, 34, 43, 24, 30, 58, 80, 20, 24, 55, 35, 40, 30, 44, 50, 46, 53, 70, 80, 36, 46, 68, 34, 48, 50, 56, 60, 64, 56, 72, 90, 92, 110, 85)

print("Kecepatan (km/jam):")
print(speed)
print("Jarak henti (meter):")
print(distance)

print("Rata-rata Kecepatan:")
print(mean(speed))
print("Rata-rata Jarak Henti:")
print(mean(distance))
print("Standar Deviasi Jarak Henti:")
print(sd(distance))

plot(speed, distance, main = "Scatter Plot Kecepatan vs Jarak Henti Mobil", xlab = "Kecepatan (km/jam)", ylab = "Jarak henti (meter)", pch  = 19, col = "steelblue"); abline(lm(distance ~ speed), col = "red", lwd = 2)

hist(speed, main = "Histogram Kecepatan Mobil", xlab = "Kecepatan (km/jam)", ylab = "Frekuensi", col  = "lightblue", border = "white")