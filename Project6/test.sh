#!/bin/bash

mkdir Development

# Create the Operations directory
mkdir Operations

# Create the Analytics directory
mkdir Analytics

# Add dummy files to the Development directory
touch Development/file1.txt
touch Development/file2.txt
touch Development/file3.txt

# Add dummy files to the Operations directory
touch Operations/file1.txt
touch Operations/file2.txt
touch Operations/file3.txt

# Add dummy files to the Analytics directory
touch Analytics/file1.txt
touch Analytics/file2.txt
touch Analytics/file3.txt

# Create the Developers group
sudo groupadd Developers

# Create the Operations group
sudo groupadd Operations

# Create the Data Analysts group
sudo groupadd "Data Analysts"

# Change the owner of the Development directory to the Developers group
sudo chown :Developers Development

# Change the owner of the Operations directory to the Operations group
sudo chown :Operations Operations

# Change the owner of the Analytics directory to the Data Analysts group
sudo chown :"Data Analysts" Analytics

# Set the permissions of the Development directory to allow only the owner group to read, write, and execute
sudo chmod 770 Development

# Set the permissions of the Operations directory to allow only the owner group to read, write, and execute
sudo chmod 770 Operations

# Set the permissions of the Analytics directory to allow only the owner group to read, write, and execute
sudo chmod 770 Analytics


# Create the Jess Waller user
sudo useradd -m -s /bin/bash -G Developers jwaller
sudo usermod -aG sudo jwaller
sudo usermod -aG adm jwaller
sudo usermod -aG www-data jwaller
sudo usermod -aG Developers jwaller
sudo usermod -aG Developers jwaller

# Create the Blake Dorsey user
sudo useradd -m -s /bin/bash -G Operations bdorsey
sudo usermod -aG sudo bdorsey
sudo usermod -aG adm bdorsey
sudo usermod -aG www-data bdorsey
sudo usermod -aG Operations bdorsey
sudo usermod -aG Operations bdorsey

# Create the Joey Ewart user
sudo useradd -m -s /bin/bash -G "Data Analysts" jewart
sudo usermod -aG sudo jewart
sudo usermod -aG adm jewart
sudo usermod -aG www-data jewart
sudo usermod -aG "Data Analysts" jewart
sudo usermod -aG "Data Analysts" jewart

# Switch to the Jess Waller user
sudo su - jwaller

# Verify access to the Development directory
cd /path/to/Development
ls -l

# Switch to the Blake Dorsey user
sudo su - bdorsey

# Verify access to the Operations directory
cd /path/to/Operations
ls -l

# Switch to the Joey Ewart user
sudo su - jewart

# Verify access to the Analytics directory
cd /path/to/Analytics
ls -l

# Set the permissions of the Development directory to allow only the owner group to read, write, and execute
sudo chmod 700 /path/to/Development

# Set the permissions of the Operations directory to allow only the owner group to read, write, and execute
sudo chmod 700 /path/to/Operations

# Set the permissions of the Analytics directory to allow only the owner group to read, write, and execute
sudo chmod 700 /path/to/Analytics

# Verify access to the Development directory
cd /path/to/Development
ls -l

# Verify access to the Operations directory
cd /path/to/Operations
ls -l

# Verify access to the Analytics directory
cd /path/to/Analytics
ls -l

#!/bin/bash

# Create the Analytics directory
mkdir Analytics

# Create the Development directory
mkdir Development

# Create the Operations directory
mkdir Operations

# Create the Developers group
sudo groupadd Developers

# Create the Operations group
sudo groupadd Operations

# Create the Data Analysts group
sudo groupadd "Data Analysts"

# Change the owner of the Development directory to the Developers group
sudo chown :Developers Development

# Change the owner of the Operations directory to the Operations group
sudo chown :Operations Operations

# Change the owner of the Analytics directory to the Data Analysts group
sudo chown :"Data Analysts" Analytics

# Set the permissions of the Development directory to allow only the owner group to read, write, and execute
sudo chmod 770 Development

# Set the permissions of the Operations directory to allow only the owner group to read, write, and execute
sudo chmod 770 Operations

# Set the permissions of the Analytics directory to allow only the owner group to read, write, and execute
sudo chmod 770 Analytics

# Create the Jess Waller user
sudo useradd -m -s /bin/bash -G Developers jwaller
sudo usermod -aG sudo jwaller
sudo usermod -aG adm jwaller
sudo usermod -aG www-data jwaller
sudo usermod -aG Developers jwaller
sudo usermod -aG Developers jwaller

# Create the Blake Dorsey user
sudo useradd -m -s /bin/bash -G Operations bdorsey
sudo usermod -aG sudo bdorsey
sudo usermod -aG adm bdorsey
sudo usermod -aG www-data bdorsey
sudo usermod -aG Operations bdorsey
sudo usermod -aG Operations bdorsey

# Create the Joey Ewart user
sudo useradd -m -s /bin/bash -G "Data Analysts" jewart
sudo usermod -aG sudo jewart
sudo usermod -aG adm jewart
sudo usermod -aG www-data jewart
sudo usermod -aG "Data Analysts" jewart
sudo usermod -aG "Data Analysts" jewart

# Switch to the Jess Waller user
sudo su - jwaller

# Verify access to the Development directory
cd /path/to/Development
ls -l

# Switch to the Blake Dorsey user
sudo su - bdorsey

# Verify access to the Operations directory
cd /path/to/Operations
ls -l

# Switch to the Joey Ewart user
sudo su - jewart

# Verify access to the Analytics directory
cd /path/to/Analytics
ls -l

# Set the permissions of the Development directory to allow only the owner group to read, write, and execute
sudo chmod 700 /path/to/Development

# Set the permissions of the Operations directory to allow only the owner group to read, write, and execute
sudo chmod 700 /path/to/Operations

# Set the permissions of the Analytics directory to allow only the owner group to read, write, and execute
sudo chmod 700 /path/to/Analytics

# Verify access to the Development directory
cd /path/to/Development
ls -l

# Verify access to the Operations directory
cd /path/to/Operations
ls -l

# Verify access to the Analytics directory
cd /path/to/Analytics
ls -l

#list all users
sudo 
sudo useradd -m -s /bin/bash -G Developers jwaller



