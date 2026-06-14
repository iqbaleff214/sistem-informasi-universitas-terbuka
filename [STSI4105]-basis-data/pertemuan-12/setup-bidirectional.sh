#!/usr/bin/env bash
# =====================================================
# BONUS: Setup replikasi ARAH KEDUA (slave -> master)
# Jalankan SETELAH setup-replication.sh berhasil.
# Hasil akhir: master-master replication (dua arah).
# =====================================================
set -euo pipefail

echo "==> [Bonus] Mengupgrade ke master-master replication"
echo "    Setup ini menambah arah replikasi kedua:"
echo "    mariadb-slave -> mariadb-master"
echo

echo "==> Langkah 1: Membuat user replikasi pada mariadb-slave..."
docker exec -i mariadb-slave mariadb -uroot -proot <<SQL 2>/dev/null
CREATE USER IF NOT EXISTS 'replica'@'%' IDENTIFIED BY 'replica';
GRANT REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'replica'@'%';
FLUSH PRIVILEGES;
SQL

echo "==> Langkah 2: Mengambil MASTER STATUS dari mariadb-slave..."
SLAVE_AS_MASTER_STATUS=$(docker exec mariadb-slave \
  mariadb -uroot -proot -N -e "SHOW MASTER STATUS;" 2>/dev/null)

if [[ -z "$SLAVE_AS_MASTER_STATUS" ]]; then
  echo "ERROR: mariadb-slave tidak punya binary log aktif."
  echo "Pastikan docker-compose.yml versi terbaru sudah dipakai (slave butuh --log-bin)."
  echo "Coba: docker compose down -v && docker compose up -d"
  exit 1
fi

SLAVE_LOG_FILE=$(echo "$SLAVE_AS_MASTER_STATUS" | awk '{print $1}')
SLAVE_LOG_POS=$(echo  "$SLAVE_AS_MASTER_STATUS" | awk '{print $2}')

echo "    Slave log file:     $SLAVE_LOG_FILE"
echo "    Slave log position: $SLAVE_LOG_POS"
echo

echo "==> Langkah 3: Mengkonfigurasi mariadb-master sebagai slave dari mariadb-slave..."
docker exec -i mariadb-master mariadb -uroot -proot <<SQL
STOP SLAVE;
RESET SLAVE ALL;
CHANGE MASTER TO
  MASTER_HOST='mariadb-slave',
  MASTER_USER='replica',
  MASTER_PASSWORD='replica',
  MASTER_LOG_FILE='${SLAVE_LOG_FILE}',
  MASTER_LOG_POS=${SLAVE_LOG_POS};
START SLAVE;
SQL

echo "==> Langkah 4: Verifikasi status kedua arah..."
sleep 3

echo
echo "Arah 1 — mariadb-slave sebagai slave dari mariadb-master:"
docker exec mariadb-slave mariadb -uroot -proot -e "SHOW SLAVE STATUS\G" 2>/dev/null \
  | grep -E "Slave_IO_Running:|Slave_SQL_Running:|Last_IO_Error:|Last_SQL_Error:" \
  | head -4

echo
echo "Arah 2 — mariadb-master sebagai slave dari mariadb-slave:"
docker exec mariadb-master mariadb -uroot -proot -e "SHOW SLAVE STATUS\G" 2>/dev/null \
  | grep -E "Slave_IO_Running:|Slave_SQL_Running:|Last_IO_Error:|Last_SQL_Error:" \
  | head -4

echo
echo "==> Selesai. Replikasi master-master aktif."
echo "    Ujicoba:"
echo "      1) INSERT pada mariadb-master  -> harus muncul di mariadb-slave"
echo "      2) INSERT pada mariadb-slave   -> harus muncul di mariadb-master"
echo
echo "    Catatan: auto-increment-offset diatur ganjil/genap supaya tidak konflik PK."