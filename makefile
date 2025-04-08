# 

up:
	docker compose up
down:
	docker compose down	
restart: 
	docker compose down
	docker compose up

console:
	docker exec -it prod_postgres /bin/bash
postgres:
	docker exec -it prod_postgres psql -U postgres -d testdb
apache:
	docker exec -it dev_webapi  /bin/bash
nas:
	docker exec -it nas_services  /bin/bash

# con cont c se para !! 

#  ✔ Network pruebas_default       Created                                                                                                                             0.2s 
#  ✔ Container pruebas-postgres-1  Created                                                                                                                             0.5s 
#  ✔ Container pruebas-drupal-1    Created      


#ojo, con el up se crean las redes y to
#bitnami  tiene imagenes mas preparadas

#bloque 1: infraestrucutra para semana 7
#bloque 