# ============================================================
# TUGAS TUTORIAL 2 - MSIM4310
# Regresi Linear Sederhana: Pendapatan vs Kebahagiaan
# ============================================================

# ---- 1. Pemasangan paket (jalankan sekali saja) ----
options(repos = c(CRAN = "https://cloud.r-project.org"))

install.packages("ggplot2")
install.packages("dplyr")
install.packages("broom")
install.packages("ggpubr")
install.packages("readxl")

# ---- 2. Memuat paket ----
library(ggplot2)
library(dplyr)
library(broom)
library(ggpubr)
library(readxl)

# ---- 3. Import data ----
# Ganti path sesuai lokasi file di komputer
data <- read_excel("data_pendapatan.xlsx", col_types = c("numeric", "numeric", "numeric"))

# Cek struktur dan ringkasan data
head(data)
str(data)
summary(data)

# ============================================================
# SOAL a — Histogram untuk cek normalitas variabel terikat
# ============================================================
hist(data$kebahagiaan,
     main = "Histogram Kebahagiaan",
     xlab = "Kebahagiaan",
     ylab = "Frekuensi",
     col  = "lightgray",
     border = "black")

# ============================================================
# SOAL b — Scatter plot untuk cek hubungan linear
# ============================================================
plot(data$pendapatan, data$kebahagiaan,
     main = "Scatter Plot Pendapatan vs Kebahagiaan",
     xlab = "Pendapatan",
     ylab = "Kebahagiaan",
     pch  = 1)

# (opsional) cek korelasi Pearson
cor(data$pendapatan, data$kebahagiaan)

# ============================================================
# SOAL c — Regresi linear sederhana
# ============================================================
model <- lm(kebahagiaan ~ pendapatan, data = data)
summary(model)

# (opsional) keluaran rapi pakai broom
tidy(model)
glance(model)

# ============================================================
# SOAL d — Plot diagnostik untuk cek homoskedastisitas
# ============================================================
par(mfrow = c(2, 2))   # tampilkan 4 plot dalam satu jendela
plot(model)
par(mfrow = c(1, 1))   # kembalikan ke layout normal

# ============================================================
# SOAL e — Visualisasi hasil regresi (ggplot2 + ggpubr)
# ============================================================
regplot <- ggplot(data, aes(x = pendapatan, y = kebahagiaan)) +
  # Langkah 1: plot titik data
  geom_point(color = "#2E5395", alpha = 0.6) +
  # Langkah 2: tambahkan garis regresi linear
  geom_smooth(method = "lm", color = "black", se = TRUE) +
  # Langkah 3: tambahkan persamaan regresi dan R^2
  stat_regline_equation(label.x = min(data$pendapatan),
                        label.y = max(data$kebahagiaan)) +
  # Langkah 4: judul dan label sumbu
  labs(title = "Hubungan Pendapatan dan Kebahagiaan",
       x = "Pendapatan",
       y = "Kebahagiaan") +
  theme_gray()

regplot