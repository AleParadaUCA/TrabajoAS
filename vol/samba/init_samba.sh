#!/bin/bash

for i in 1 2 3 4 5; do
    mkdir -p /mnt/desarrollo/SW$i /mnt/revision/SW$i /mnt/publico/SW$i    
done

exec samba.sh \
  -p \
  -u 'empleado1;password1' \
  -u 'empleado2;password2' \
  -u 'empleado3;password3' \
  -u 'empleado4;password4' \
  -u 'empleado5;password5' \
  -u 'revisor;revisor' \
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
  -s 'publico;/mnt/publico;yes;yes;no;;;revisor' \