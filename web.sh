# sudo yum install -y httpd php php-mysql
sudo yum install -y httpd 
sudo firewall-cmd --permanent --zone=public --add-port=80/tcp
sudo firewall-cmd --reload
sudo yum install unzip -y
sudo sed -i 's/index.html/index.php/g' /etc/httpd/conf/httpd.conf
sudo service httpd start
sudo systemctl enable httpd
sudo mkdir -p /var/www/html
sudo chown vagrant:vagrant /var/www/*
