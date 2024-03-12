#!/bin/bash

# Create directories
mkdir Development Operations Analytics

# Create dummy files (10 per directory)
for dir in Development Operations Analytics; do
  for i in {1..10}; do
    touch "$dir/file_$i.txt"
  done
done

# Create groups
groupadd Developers
groupadd Operations
groupadd Data_Analysts

# Set directory ownership and permissions
chown :Developers Development
chmod 750 Development
chown :Operations Operations
chmod 750 Operations
chown :Data_Analysts Analytics
chmod 750 Analytics

# Create users with information and add to groups
adduser -m -g Developers jwaller -c "Jess Waller" -e jwaller@levelupbank.com
adduser -m -g Operations bdorsey -c "Blake Dorsey" -e bdorsey@levelupbank.com
adduser -m -g Data_Analysts jewart -c "Joey Ewart" -e jewart@levelupbank.com

# Switch to each user and verify access
for user in jwaller bdorsey jewart; do
  su - $user << EOF
    # List directory contents
    ls -l /home/$user

    # Try accessing other directories (should fail)
    ls -l /home/jwaller /home/bdorsey /home/jewart

    # Try accessing own files (should succeed)
    cat /home/$user/file_1.txt
  EOF
done

# Advanced: Set permissions for user profiles
chmod 700 /home/*

# Verify user access to own profile
for user in jwaller bdorsey jewart; do
  su - $user << EOF
    # Try accessing other user's home directory (should fail)
    ls -l /home/jwaller /home/bdorsey /home/jewart

    # Try accessing own home directory (should succeed)
    ls -l /home/$user
  EOF
done

echo "Script completed. User and group management with permissions set."
