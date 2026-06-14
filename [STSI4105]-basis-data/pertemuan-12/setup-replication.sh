#!/usr/bin/env bash
# =====================================================
# Setup replikasi slave → master
# Jalankan SETELAH 'docker compose up -d' dan kontainer
# master + slave keduanya sudah healthy (~30 detik).
# =====================================================
set -euo pipefail

echo "==> Menunggu master & slave siap..."
sleep 10

echo "==> Mengambil MASTER STATUS dari mariadb-master..."
MASTER_STATUS=$(docker exec mariadb-master \
  mariadb -uroot -proot -N -e "SHOW MASTER STATUS;" 2>/dev/null)

if [[ -z "$MASTER_STATUS" ]]; then
  echo "Gagal mengambil master status. Pastikan kontainer master sudah jalan."
  exit 1
fi

MASTER_LOG_FILE=$(echo "$MASTER_STATUS" | awk '{print $1}')
MASTER_LOG_POS=$(echo  "$MASTER_STATUS" | awk '{print $2}')

echo "    File:     $MASTER_LOG_FILE"
echo "    Position: $MASTER_LOG_POS"
echo

echo "==> Mengkonfigurasi slave (CHANGE MASTER TO + START SLAVE)..."
docker exec mariadb-slave mariadb -uroot -proot <<SQL
STOP SLAVE;
RESET SLAVE ALL;
CHANGE MASTER TO
  MASTER_HOST='mariadb-master',
  MASTER_USER='replica',
  MASTER_PASSWORD='replica',
  MASTER_LOG_FILE='${MASTER_LOG_FILE}',
  MASTER_LOG_POS=${MASTER_LOG_POS};
START SLAVE;
SQL

echo "==> Selesai. Memeriksa status slave..."
sleep 2
docker exec mariadb-slave mariadb -uroot -proot -e "SHOW SLAVE STATUS\\G" \
  | grep -E "Slave_IO_Running|Slave_SQL_Running|Last_IO_Error|Last_SQL_Error"

echo
echo "==> Setup selesai. Akses phpMyAdmin di http://localhost:8080"
echo "    - Server master : mariadb-master   (user: root, pass: root)"
echo "    - Server slave  : mariadb-slave    (user: root, pass: root)"
