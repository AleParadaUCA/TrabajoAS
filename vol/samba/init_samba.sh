#!/bin/bash

for i in 1 2 3 4 5; do
    groupadd -g 20$i empleado$i
    useradd -u 20$i -g empleado$i -M -s /sbin/nologin empleado$i
    echo "empleado$i:password$i" | chpasswd

    # Agregar al sistema Samba
    (echo password$i; echo password$i) | smbpasswd -s -a empleado$i
done

# Revisor
groupadd -g 300 revisor
useradd -u 300 -g revisor -M -s /sbin/nologin revisor
echo "revisor:password6" | chpasswd
(echo password6; echo password6) | smbpasswd -s -a revisor

exec samba.sh \
  -s 'SW1;/mnt/desarrollo/SW1;yes;no;no;empleado1' \
  -s 'SW2;/mnt/desarrollo/SW2;yes;no;no;empleado2' \
  -s 'SW3;/mnt/desarrollo/SW3;yes;no;no;empleado3' \
  -s 'SW4;/mnt/desarrollo/SW4;yes;no;no;empleado4' \
  -s 'SW5;/mnt/desarrollo/SW5;yes;no;no;empleado5' \
  -s 'rev1;/mnt/revision/SW1;yes;no;no;empleado1,revisor' \
  -s 'rev2;/mnt/revision/SW2;yes;no;no;empleado2,revisor' \
  -s 'rev3;/mnt/revision/SW3;yes;no;no;empleado3,revisor' \
  -s 'rev4;/mnt/revision/SW4;yes;no;no;empleado4,revisor' \
  -s 'rev5;/mnt/revision/SW5;yes;no;no;empleado5,revisor' \
  -s 'pub1;/mnt/publico/SW1;yes;yes;no;revisor' \
  -s 'pub2;/mnt/publico/SW2;yes;yes;no;revisor' \
  -s 'pub3;/mnt/publico/SW3;yes;yes;no;revisor' \
  -s 'pub4;/mnt/publico/SW4;yes;yes;no;revisor' \
  -s 'pub5;/mnt/publico/SW5;yes;yes;no;revisor' \
