#!/bin/bash

# Create directories and files
mkdir Development Operations Analytics
for dir in Development Operations Analytics; do
  for i in {1..5}; do touch $dir/file$i; done
done

# Create groups and set permissions
groupadd Developers Operations DataAnalysts
for dir,group in Development Developers Operations Operations Analytics DataAnalysts; do
  chown :$group $dir
  chmod 750 $dir
done

# Create users
useradd -m -G Developers jwaller -c "Jess Waller" -e jwaller@levelupbank.com
useradd -m -G Operations bdorsey -c "Blake Dorsey" -e bdorsey@levelupbank.com
useradd -m -G DataAnalysts jewart -c "Joey Ewart" -e jewart@levelupbank.com

# Set personal profile permissions
for user in jwaller bdorsey jewart; do
  chown $user /home/$user
  chmod 700 /home/$user
done

echo "Script execution complete!"
