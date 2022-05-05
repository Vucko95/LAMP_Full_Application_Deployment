# FirewallD
sudo yum install -y firewalld
sudo service firewalld start
sudo systemctl enable firewalld
# Maria DB
sudo yum install -y mariadb-server
sudo service mariadb start
sudo systemctl enable mariadb
sudo firewall-cmd --permanent --zone=public --add-port=3306/tcp
sudo firewall-cmd --reload
sudo mysql -e "CREATE DATABASE ecomdb;"
sudo mysql -e " CREATE USER 'ecomuser'@'localhost' IDENTIFIED BY 'ecompassword'; "
sudo mysql -e " GRANT ALL PRIVILEGES ON *.* TO 'ecomuser'@'localhost';"
sudo mysql -e " FLUSH PRIVILEGES;"