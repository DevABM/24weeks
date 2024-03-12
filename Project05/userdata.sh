#!bin-bash
sudo su
yum update -y
yum install httpd -y
service httpd start
chkconfig httpd on
cd /var/www/html
echo "<html><h1>Hello World</h1></html>" > index.html

sudo su -
yum -y install nginx
clear
 
systemctl status nginx
systemctl start nginx
systemctl status nginx
 _________________________________
netstat -ntlp
 
 
cd /usr/share/nginx/html
cat index.html
echo "This is my first Website" > index.html
cat index.html
