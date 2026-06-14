# Setup Praktikum MSIM4206 — Tugas 3

Paket setup Docker untuk praktikum Transaksi dan Basis Data Terdistribusi.

## Isi paket

| File | Fungsi |
|---|---|
| `docker-compose.yml` | Definisi 3 kontainer (master, slave, phpMyAdmin) dalam satu jaringan Docker |
| `rumahsakit.sql` | Skema lengkap + data awal untuk **master** (auto-import) |
| `rumahsakit-schema-only.sql` | Skema saja (tanpa data) untuk **slave** (auto-import) |
| `init-master.sql` | Auto-buat user `replica` pada master |
| `setup-replication.sh` | Script utama: setup replikasi **satu arah** (master → slave) sesuai panduan |
| `setup-bidirectional.sh` | **Bonus**: extend ke replikasi **dua arah** (master-master) |

## Prasyarat

- Docker Desktop sudah terpasang dan berjalan
- Port 3307, 3308, dan 8080 tidak sedang dipakai aplikasi lain

## Bagian 1 — Setup Utama (Sesuai Panduan)

### 1) Letakkan semua file dalam satu folder

```bash
cd "~/[STSI4105]-basis-data/pertemuan-12"
ls
# docker-compose.yml  init-master.sql RAT.md README.md  rumahsakit-schema-only.sql
# rumahsakit.sql  setup-replication.sh  setup-bidirectional.sh
```

### 2) Jalankan semua kontainer

```bash
docker compose up -d
```

Tunggu ~30 detik. Skema dan data otomatis di-impor karena di-mount sebagai `/docker-entrypoint-initdb.d/*.sql`.

Verifikasi:

```bash
docker compose ps
```

### 3) Setup replikasi master → slave (one-way, sesuai panduan)

```bash
chmod +x setup-replication.sh
./setup-replication.sh
```

Script akan otomatis menjalankan `CHANGE MASTER TO` + `START SLAVE` di slave. Pastikan `Slave_IO_Running: Yes` dan `Slave_SQL_Running: Yes`.

### 4) Akses phpMyAdmin

Buka `http://localhost:8080`. Saat login:
- **Server**: `mariadb-master` (untuk master) atau `mariadb-slave` (untuk slave)
- **Username**: `root`
- **Password**: `root`

### 5) Uji replikasi master → slave

Tambah data di tabel `obat` pada `mariadb-master`, refresh `mariadb-slave` — data muncul otomatis.

---

## Bagian 2 — Bonus: Replikasi Dua Arah (Opsional)

Panduan praktikum hanya mengajarkan replikasi **satu arah** (master → slave). Namun rubrik penilaian juga memuat slot untuk pengujian arah sebaliknya (slave → master). Bagian bonus ini menunjukkan bagaimana arsitektur Docker yang sama dapat diperluas menjadi **master-master replication** sehingga kedua arah berjalan.

### Cara menjalankan

Setelah bagian 1 selesai dan replikasi satu arah berjalan dengan baik:

```bash
chmod +x setup-bidirectional.sh
./setup-bidirectional.sh
```

Script ini akan:
1. Membuat user `replica` pada kontainer slave (yang sekarang juga berperan sebagai master).
2. Mengambil `MASTER_LOG_FILE` dan `MASTER_LOG_POS` dari slave.
3. Menjalankan `CHANGE MASTER TO` + `START SLAVE` pada **mariadb-master** dengan target = mariadb-slave.
4. Verifikasi status replikasi pada kedua arah.

### Uji replikasi dua arah

- **Arah 1**: Tambah data di `mariadb-master` → muncul di `mariadb-slave` (sudah berjalan sebelumnya).
- **Arah 2**: Tambah data di `mariadb-slave` → muncul di `mariadb-master`.

### Cara kerja singkat

| Aspek | Penjelasan |
|---|---|
| `--log-bin` di kedua kontainer | Keduanya menulis binary log sehingga bisa berperan sebagai source replikasi |
| `--server-id=1` dan `--server-id=2` | Identitas unik; juga dipakai oleh filter untuk mencegah loop |
| `--auto-increment-offset=1`/`=2` | Master pakai PK ganjil (1,3,5...), slave pakai PK genap (2,4,6...) — menghindari konflik PK kalau keduanya insert simultan |
| Server-id filter | Otomatis MariaDB skip event yang server-id-nya sama dengan dirinya — ini yang memutus loop replikasi |

---

## Reset penuh (kalau perlu mulai bersih)

```bash
docker compose down -v   # -v menghapus volume → data ikut hilang
docker compose up -d
./setup-replication.sh
# (opsional) ./setup-bidirectional.sh
```

## Troubleshooting

**phpMyAdmin tidak bisa login ke `mariadb-master`**
Tunggu beberapa detik lagi — kontainer butuh waktu untuk inisialisasi pertama kali.

**`Slave_IO_Running: No` setelah setup**
Cek `Last_IO_Error` di output `SHOW SLAVE STATUS\G`. Biasanya karena master belum siap saat script dijalankan.

**Setelah `setup-bidirectional.sh`, master menampilkan `Slave_IO_Running: No`**
Pastikan `docker-compose.yml` versi terbaru yang dipakai (slave butuh `--log-bin` di command). Reset: `docker compose down -v && docker compose up -d && ./setup-replication.sh && ./setup-bidirectional.sh`.

**Port 3307/3308/8080 sudah dipakai**
Edit `docker-compose.yml`, ganti angka di sisi kiri tanda `:` pada `ports`.

## Catatan untuk demonstrasi praktikum

Tabel `transaksi_obat` sengaja dibiarkan kosong — supaya demo trigger di video bisa memperlihatkan INSERT pertama yang langsung mengurangi stok obat. Setelah setup selesai, kamu sudah punya:

- 4 pasien (Joko Widodo, Susilo, Popi, Bunga)
- 3 dokter, 2 administrator
- 3 obat (Amikacin 10, Amoxillin 20, Betadine 5)
- 0 transaksi_obat (siap untuk demo trigger)
- Replikasi master → slave aktif (siap untuk uji arah 1)
- Replikasi master-master siap di-aktifkan untuk arah 2 dengan menjalankan `setup-bidirectional.sh`
