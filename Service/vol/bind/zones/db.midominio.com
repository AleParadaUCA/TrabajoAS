$TTL    604800
@       IN      SOA     midominio.com. root.midominio.com. (
                         2025032101   ; Serial
                         604800       ; Refresh
                         86400        ; Retry
                         2419200      ; Expire
                         604800 )     ; Negative Cache TTL

@       IN      NS      ns1.midominio.com.
ns1     IN      A       172.20.0.10
www     IN      A       172.20.0.20
mail    IN      A       172.20.0.30
