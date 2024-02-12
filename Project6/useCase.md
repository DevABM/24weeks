### Foundational

As the root user:

Create 3 directories: Development, Operations, Analytics

Add several blank dummy files to each directory using the appropriate commands. Do not use a text editor.

Create 3 Groups in Linux: Developers, Operations, Data Analysts

Each group should only have view and access to their respective directory.

Use the chown command to change the owner of each directory to their respective group.

Use the chmod command to modify the permissions to the directory so that only the owner of the group can read, write and execute. Users should not be able to access the directory if they are not in the correct group.

Create the following users with the associated information

Jess Waller, username= jwaller, email=jwaller@‌levelupbank.com, group= Developers

Blake Dorsey, username= bdorsey, email=bdorsey@‌levelupbank.com, group= Operations

Joey Ewart, username= jewart, email=jewart@levelupbank.com, group= Data Analysts

Switch to each newly created user and verify they are only able to access the directories associated with their Group and that they are able to view and open the files in the directory.

### Advanced

Set permissions so that users can only access their own profile.

Verify that each user can only access their own profile.

Note: If you switch to one of the users, that user should be able to access their own home directory /home/[username], but not be able to access or cd into another user’s home directory.

### Complex

Create and successfully run a bash script that does everything from the Foundational and Advanced tiers of the project.