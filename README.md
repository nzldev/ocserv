## iVPN-ocserv server setup (server software uses ocserv) Note that this project is based on Centos7 operating system
### installation steps ###
> * Install ocserv server, please use the following script file to install
> * https://raw.githubusercontent.com/devsmine/ocserv/master/ocserv_quick.sh
> * Use Radius to manage the account in the ocserv server, that is, OCSERV connects to Radius, please install the above script and then use the following script file to install and configure radius
> * https://raw.githubusercontent.com/devsmine/ocserv/master/ocserv_radius_quickinstall.sh
## Common methods of server operations ##
> * Start server method: systemctl start ocserv
> * Stop server method: systemctl stop ocserv
> * Server restart method: systemctl restart ocserv
## Method of adding client account
> * Method 1: /root/iVPN/user_add.sh directly add the account password and certificate file through the script file
> * Method 2: ocpasswd -c / etc / ocserv / ocpasswd user_name Add an account with the user name user_name, and modify the password if it already exists
> * Method 3: cd / root / iVPN; mkdir user_name; cd user_name; ../gen-client-cert.sh user_name / root / iVPN only add user certificate> * ocpasswd -d user_name delete user_name account
## Configuration file description ##
> * ocserv_quick.sh-script file for quick installation of iVPN server
> * ocserv.conf-the main server configuration file
> * install_script.sh-server installation main script file
> * ocserv_radius_quickinstall.sh-Ocserv docking Radius quick installation script
> * radius_for_ocserv.sh-Ocserv's main Radius script file
> * user_add.sh-script to quickly generate iVPN client account and client certificate
> * user_del.sh-quick delete iVPN client account and disable account certificate script
> * client_download.txt-download address for different types of clients
> * certificate.txt-add certificate user description separately

## Modify the contents of the /var/lib/ocserv/profile.xml file to push the server configuration to the client ###
```bash
vi /var/lib/ocserv/profile.xml
```
```xml
<ServerList>
                <HostEntry>
                    <HostName>Server description 1</HostName>
                    <HostAddress>server1_ipaddress:port</HostAddress>
                </HostEntry>
                <HostEntry>
                    <HostName>Server description 2</HostName>
                    <HostAddress>server2_ipaddress:port</HostAddress>
                </HostEntry>
</ServerList>
```
