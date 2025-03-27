#!/bin/bash
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
mkdir -p /backups/mysql
mkdir -p /backups/postgresql

#Backup de PostgreSQL
PGPASSWORD="mysecretpassword" pg_dump -h 172.20.0.11 -U postgres -d testdb -F p -b -v -f "/backups/postgres/postgresqlbackup${TIMESTAMP}.sql"

#Backup de MySQL 
mysqldump --no-tablespaces -h 172.40.0.11 -u drupal -p"drupal" drupal > "/backups/mysql/mysql_backup_$TIMESTAMP.sql"

# Opcional: Rsync para mantener versiones antiguas
# rsync -av --delete /backups/ /backup_destino_remoto/
