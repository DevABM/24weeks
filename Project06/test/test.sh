# Create directories
mkdir Development Operations Analytics

# Create dummy files
for dir in Development Operations Analytics; do
  for i in {1..5}; do touch $dir/file$i; done
done

