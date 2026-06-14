-- =====================================================
-- Auto-init untuk MASTER
-- Membuat user replikasi 'replica' yang dipakai oleh
-- mariadb-slave untuk mengambil binary log.
-- =====================================================

CREATE USER IF NOT EXISTS 'replica'@'%' IDENTIFIED BY 'replica';
GRANT REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'replica'@'%';
FLUSH PRIVILEGES;
