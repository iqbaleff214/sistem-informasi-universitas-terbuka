-- =====================================================
-- Versi schema-only untuk SLAVE
-- Slave hanya butuh struktur tabel; data akan datang
-- lewat replikasi dari master.
-- =====================================================

CREATE DATABASE IF NOT EXISTS rumahsakit
  CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE rumahsakit;

CREATE TABLE IF NOT EXISTS administrator (
  id_admin    INT(3) NOT NULL,
  nama_admin  VARCHAR(30),
  waktu_jaga  VARCHAR(100),
  PRIMARY KEY (id_admin)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS dokter (
  id_dokter      INT(3) NOT NULL,
  nama_dokter    VARCHAR(30),
  alamat_dokter  VARCHAR(100),
  tanggal_lahir  DATE,
  no_hp          VARCHAR(15),
  spesialis      VARCHAR(15),
  waktu_kerja    VARCHAR(100),
  PRIMARY KEY (id_dokter)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS pasien (
  id_pasien      INT(3) NOT NULL,
  nama_pasien    VARCHAR(30),
  alamat_pasien  VARCHAR(100),
  jenis_kelamin  INT(1),
  PRIMARY KEY (id_pasien)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS daftar (
  id_daftar  INT(3) NOT NULL AUTO_INCREMENT,
  id_pasien  INT(3),
  id_admin   INT(3),
  PRIMARY KEY (id_daftar)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS dokter_admin (
  id_data    INT(3) NOT NULL AUTO_INCREMENT,
  id_dokter  INT(3),
  id_admin   INT(3),
  PRIMARY KEY (id_data)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS pasien_dokter (
  id             INT(3) NOT NULL AUTO_INCREMENT,
  id_dokter      INT(3),
  id_pasien      INT(3),
  waktu_periksa  DATE,
  resep          VARCHAR(100),
  PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS obat (
  id_obat    INT(6) NOT NULL AUTO_INCREMENT,
  kode_obat  VARCHAR(5),
  nama_obat  VARCHAR(30),
  harga      INT(10),
  stok       INT(5),
  PRIMARY KEY (id_obat)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS transaksi_obat (
  id_transaksi  INT(3) NOT NULL AUTO_INCREMENT,
  id_pasien     INT(3),
  id_obat       INT(6),
  jumlah        INT(10),
  total_harga   INT(10),
  PRIMARY KEY (id_transaksi)
) ENGINE=InnoDB;
