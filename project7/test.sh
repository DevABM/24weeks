sudo yum -y update
sudo amazon-linux-extras install java-openjdk11
java -version
sudo su
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.2/bin/apache-tomcat-10.0.12.tar.gz
tar xzvf apache-tomcat-10.0.12.tar.gz
mv apache-tomcat-10.0.12 tomcat
cd tomcat/bin
./startup.sh
