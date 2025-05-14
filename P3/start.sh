#!/bin/bash

mkdir -p /usr/local/apache2/conf/auth 

htpasswd -cb /usr/local/apache2/conf/auth/.htpasswd documentos GraTiS!

httpd-foreground

chmod -R o+r /usr/local/apache2/mmt/ftp/publico