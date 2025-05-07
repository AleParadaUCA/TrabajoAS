#!/bin/bash

for i in 1 2 3 4 5; do
    mkdir -p /mnt/desarrollo/SW$i /mnt/revision/SW$i /mnt/publico/SW$i

    chown empleado$i:empleado$i /mnt/desarrollo/SW$i
    chmod 700 /mnt/desarrollo/SW$i

    chown empleado$i:empleado$i /mnt/revision/SW$i
    chmod 770 /mnt/revision/SW$i

    chown revisor:revisor /mnt/publico/SW$i
    chmod 755 /mnt/publico/SW$i
done

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
  -s 'pub5;/mnt/publico/SW5;yes;yes;no;revisor'
