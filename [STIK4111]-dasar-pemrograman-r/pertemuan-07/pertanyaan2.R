# 1. Membangkitkan 150 observasi data Distribusi Normal (mean=0, sd=1)
data_obs <- rnorm(n = 150, mean = 0, sd = 1)

# 2. Menyimpan data tersebut ke dalam bentuk matriks dengan 5 kolom
matriks_data <- matrix(data_obs, ncol = 5)

# 3. Mengkonversi matriks menjadi data frame bernama data_normal
data_normal <- as.data.frame(matriks_data)

# 4. Mengecek struktur dan bentuk awal dari frame data
head(data_normal)
