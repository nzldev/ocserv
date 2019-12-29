#######################################################
#                                                     #
# This is a ocserv installation for CentOS 7 and 6    #
# Version: 1.1.1		                      #
# Author: nzl.nadeem@gmail.com     		      #
# Website: https://devsmine.com			      #
#                                                     #
#######################################################
#Copy all the code below and paste it into your server for installation. Your server must be Centos7
sudo -i 
yum install wget -y 
wget https://raw.githubusercontent.com/devsmine/ocserv/master/install_script.sh
chmod +x install_script.sh 
./install_script.sh
#
