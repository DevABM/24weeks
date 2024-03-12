#!/bin/bash

# Define user and group details
users=(user1 user2)
groups=(group1 group2)
directories=(dir1 dir2)

# Check if the number of users, groups, and directories match
if [[ ${#users[@]} -ne ${#groups[@]} || ${#groups[@]} -ne ${#directories[@]} ]]; then
  echo "Error: Unequal number of users, groups, or directories provided."
  exit 1
fi

# Create groups if they don't exist
for group in "${groups[@]}"; do
  if ! grep -q "$group" /etc/group; then
    sudo groupadd "$group"
  fi
done

# Create users and assign them to their respective groups
for i in "${!users[@]}"; do
  user="${users[$i]}"
  group="${groups[$i]}"
  directory="${directories[$i]}"

  # Create user if it doesn't exist
  if ! id -u "$user" >/dev/null 2>&1; then
    sudo useradd -m -g "$group" "$user"
  fi

  # Set ownership and permissions for the directory
  sudo chown :"$group" "$directory"
  sudo chmod 750 "$directory"
done

echo "User access to directories configured successfully."
