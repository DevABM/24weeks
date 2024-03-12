# Create groups
groupadd Developers Operations DataAnalysts

# Set ownership and permissions
for dir group in Development Developers Operations Operations Analytics DataAnalysts; do
  chown :$group $dir
  chmod 750 $dir
done

