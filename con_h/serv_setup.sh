#!/bin/bash
cd "/home/coykto/huvu/con_h/"
scp      hostname               root@188.225.78.9:/etc
scp      hosts                  root@188.225.78.9:/etc
scp      opendkim.conf          root@188.225.78.9:/etc
scp      interfaces             root@188.225.78.9:/etc/network
scp      main.cf                root@188.225.78.9:/etc/postfix
scp      master.cf              root@188.225.78.9:/etc/postfix
scp      named.conf.local       root@188.225.78.9:/etc/bind
scp      db.huvu.ru             root@188.225.78.9:/etc/bind/zones
scp      rev.188.225.78         root@188.225.78.9:/etc/bind/zones
scp      rev.188.225.32         root@188.225.78.9:/etc/bind/zones
scp      dovecot.conf           root@188.225.78.9:/etc/dovecot
scp      10-auth.conf           root@188.225.78.9:/etc/dovecot/conf.d/

