#!/bin/bash
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_DIR="/backups/$TIMESTAMP"
mkdir -p $BACKUP_DIR

# Backup de PostgreSQL
PGPASSWORD="mysecretpassword" pg_dump -h testdb -U postgres -F c -b -v -f "$BACKUP_DIR/postgresql_backup.sql"

# Backup de MySQL
mysqldump -h drupal -u drupal -p"drupal" --all-databases > "$BACKUP_DIR/mysql_backup.sql"

# Opcional: Rsync para mantener versiones antiguas
rsync -av --delete /backups/ /backup_destino_remoto/
