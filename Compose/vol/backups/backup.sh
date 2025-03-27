TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p /backups/mysql
mkdir -p /backups/postgres

#Backup de PostgreSQL
PGPASSWORD="mysecretpassword" pg_dump -h 172.20.0.11 -U postgres -d testdb -F p -b -v -f "/backups/postgres/postgres_backup_${TIMESTAMP}.sql"

#Backup de MySQL #Hay que crear el directorio /backups/mysql manualmente
mysqldump --no-tablespaces -h 172.40.0.11 -u drupal -p"drupal" drupal > "/backups/mysql/mysqlbackup_$TIMESTAMP.sql"


#Opcional: Rsync para mantener versiones antiguas
#rsync -av --delete /backups/ /backup_destino_remoto/
