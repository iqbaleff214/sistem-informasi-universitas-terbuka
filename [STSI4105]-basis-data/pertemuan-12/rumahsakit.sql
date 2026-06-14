-- =====================================================
-- Basis Data: rumahsakit
-- Skema + data awal sesuai panduan praktikum MSIM4206
-- Modul 6 + tambahan tabel obat & transaksi_obat (Modul 9)
-- =====================================================

CREATE DATABASE IF NOT EXISTS rumahsakit
  CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE rumahsakit;

-- -----------------------------------------------------
-- Tabel administrator
-- -----------------------------------------------------
CREATE TABLE administrator (
  id_admin    INT(3) NOT NULL,
  nama_admin  VARCHAR(30),
  waktu_jaga  VARCHAR(100),
  PRIMARY KEY (id_admin)
) ENGINE=InnoDB;

INSERT INTO administrator VALUES
  (1, 'Andi',  'Senin–Jumat, 08.00–16.00'),
  (2, 'Citra', 'Sabtu–Minggu, 08.00–16.00');

-- -----------------------------------------------------
-- Tabel dokter
-- -----------------------------------------------------
CREATE TABLE dokter (
  id_dokter      INT(3) NOT NULL,
  nama_dokter    VARCHAR(30),
  alamat_dokter  VARCHAR(100),
  tanggal_lahir  DATE,
  no_hp          VARCHAR(15),
  spesialis      VARCHAR(15),
  waktu_kerja    VARCHAR(100),
  PRIMARY KEY (id_dokter)
) ENGINE=InnoDB;

INSERT INTO dokter VALUES
  (1, 'dr. Hasan',  'Jl. Cendana 12, Jakarta',   '1980-05-12', '081234567001', 'Umum',     'Senin–Jumat, 09.00–14.00'),
  (2, 'dr. Lina',   'Jl. Anggrek 4, Bandung',     '1985-08-22', '081234567002', 'Anak',     'Senin–Rabu, 13.00–18.00'),
  (3, 'dr. Rizal',  'Jl. Mawar 9, Surabaya',      '1978-11-30', '081234567003', 'Jantung',  'Selasa–Sabtu, 08.00–13.00');

-- -----------------------------------------------------
-- Tabel pasien
-- -----------------------------------------------------
CREATE TABLE pasien (
  id_pasien      INT(3) NOT NULL,
  nama_pasien    VARCHAR(30),
  alamat_pasien  VARCHAR(100),
  jenis_kelamin  INT(1),
  PRIMARY KEY (id_pasien)
) ENGINE=InnoDB;

-- jenis_kelamin: 1 = Laki-laki, 2 = Perempuan
INSERT INTO pasien VALUES
  (1, 'Joko Widodo', 'Jalan Pakis haji no 35 Jakarta', 1),
  (2, 'Susilo',      'Jl Pungkur no 4 Jakarta',         1),
  (3, 'Popi',        'Jl Mawar no. 1 Bekasi',           2),
  (4, 'Bunga',       'Jl. Merdeka Jakarta',             2);

-- -----------------------------------------------------
-- Tabel daftar (pasien mendaftar lewat administrator)
-- -----------------------------------------------------
CREATE TABLE daftar (
  id_daftar  INT(3) NOT NULL AUTO_INCREMENT,
  id_pasien  INT(3),
  id_admin   INT(3),
  PRIMARY KEY (id_daftar),
  KEY fk_daftar_pasien (id_pasien),
  KEY fk_daftar_admin  (id_admin),
  CONSTRAINT fk_daftar_pasien FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien),
  CONSTRAINT fk_daftar_admin  FOREIGN KEY (id_admin)  REFERENCES administrator(id_admin)
) ENGINE=InnoDB;

INSERT INTO daftar (id_pasien, id_admin) VALUES (1, 1), (2, 1), (3, 2), (4, 2);

-- -----------------------------------------------------
-- Tabel dokter_admin (admin memberikan data ke dokter)
-- -----------------------------------------------------
CREATE TABLE dokter_admin (
  id_data    INT(3) NOT NULL AUTO_INCREMENT,
  id_dokter  INT(3),
  id_admin   INT(3),
  PRIMARY KEY (id_data),
  KEY fk_da_dokter (id_dokter),
  KEY fk_da_admin  (id_admin),
  CONSTRAINT fk_da_dokter FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter),
  CONSTRAINT fk_da_admin  FOREIGN KEY (id_admin)  REFERENCES administrator(id_admin)
) ENGINE=InnoDB;

INSERT INTO dokter_admin (id_dokter, id_admin) VALUES (1, 1), (2, 1), (3, 2);

-- -----------------------------------------------------
-- Tabel pasien_dokter (dokter memeriksa pasien)
-- -----------------------------------------------------
CREATE TABLE pasien_dokter (
  id             INT(3) NOT NULL AUTO_INCREMENT,
  id_dokter      INT(3),
  id_pasien      INT(3),
  waktu_periksa  DATE,
  resep          VARCHAR(100),
  PRIMARY KEY (id),
  KEY fk_pd_dokter (id_dokter),
  KEY fk_pd_pasien (id_pasien),
  CONSTRAINT fk_pd_dokter FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter),
  CONSTRAINT fk_pd_pasien FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien)
) ENGINE=InnoDB;

INSERT INTO pasien_dokter (id_dokter, id_pasien, waktu_periksa, resep) VALUES
  (1, 1, '2026-05-20', 'Paracetamol 3x sehari'),
  (2, 3, '2026-05-21', 'Amoxillin 2x sehari'),
  (3, 2, '2026-05-22', 'Kontrol jantung lanjutan');

-- -----------------------------------------------------
-- Tabel obat (tambahan untuk praktikum trigger)
-- -----------------------------------------------------
CREATE TABLE obat (
  id_obat    INT(6) NOT NULL AUTO_INCREMENT,
  kode_obat  VARCHAR(5),
  nama_obat  VARCHAR(30),
  harga      INT(10),
  stok       INT(5),
  PRIMARY KEY (id_obat)
) ENGINE=InnoDB;

INSERT INTO obat (kode_obat, nama_obat, harga, stok) VALUES
  ('A001', 'Amikacin',  20000, 10),
  ('A002', 'Amoxillin', 15000, 20),
  ('A003', 'Betadine',   7000,  5);

-- -----------------------------------------------------
-- Tabel transaksi_obat (tambahan untuk praktikum trigger)
-- -----------------------------------------------------
CREATE TABLE transaksi_obat (
  id_transaksi  INT(3) NOT NULL AUTO_INCREMENT,
  id_pasien     INT(3),
  id_obat       INT(6),
  jumlah        INT(10),
  total_harga   INT(10),
  PRIMARY KEY (id_transaksi),
  KEY fk_to_pasien (id_pasien),
  KEY fk_to_obat   (id_obat),
  CONSTRAINT fk_to_pasien FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien),
  CONSTRAINT fk_to_obat   FOREIGN KEY (id_obat)   REFERENCES obat(id_obat)
) ENGINE=InnoDB;

-- transaksi_obat sengaja dibiarkan kosong supaya saat demo trigger
-- mahasiswa bisa memperlihatkan INSERT pertama → stok obat berkurang otomatis.
