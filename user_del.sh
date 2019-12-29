#!/bin/bash
#ocserv Script File for Deleting Certificates for Users and Logout Users
function user_del() {
    read -p "Please enter the name of the user you want to delete !" user_name
    if  [ ! -n "$user_name" ] ;then
    echo "You did not enter a username, please re-execute the program"
    else
    /usr/bin/ocpasswd -d $user_name
    echo "$user_name User deleted successfully"
    cat /root/iVPN/$user_name/$user_name-cert.pem >> /root/iVPN/revoked.pem
    certtool --generate-crl --load-ca-privkey ca-key.pem  --load-ca-certificate ca-cert.pem --load-certificate revoked.pem  --template crl.tmpl --outfile crl.pem
    echo "$user_name User certificate is revoked"
    service ocserv restart
	fi
}
user_del
