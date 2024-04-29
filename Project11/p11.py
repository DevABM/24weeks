# Create a script that generates a list of dictionaries about files in the working directory. Then print the list.

import os
import json
import pprint
import glob 

def generate_file_list():   
    """
    Generate a list of dictionaries with information about files in the working directory.

    Returns:
        list: A list of dictionaries containing information about each file.
    """
    
    file_list = []
    
    for file_name in glob.glob('*.*'):
        file_info = {
            'name': file_name,
            'size': os.path.getsize(file_name),
            'modified': os.path.getmtime(file_name)
        }
        file_list.append(file_info)
        
    return file_list
    
# Example usage
file_list = generate_file_list()
pprint.pprint(file_list)

        




