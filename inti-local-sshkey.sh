#!/bin/bash
#By wocin
#Email ---
yum -y install expect
expect -c "
    set timeout 3;
    spawn /usr/bin/ssh-keygen -t rsa
    expect \"id_rsa):\" {send \"\n\";};
    sleep 1;
    expect \" passphrase):\" {send \"\n\";};
    sleep 1;
    expect \" again:\" {send \"\n\";};
    expect eof;"
    