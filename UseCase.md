**IAM Roles with EC2**

Once you’ve completed your project email [projectreviews@levelupintech.com](mailto:projectreviews@levelupintech.com "‌") if you’d like a coach to review and provide feedback. You will get one review per project (no resubmissions). **This is voluntary to help you improve, but you don't have to submit all of your project to complete the program.**

‌

The subject of your email should include "Project Review for Week "X" - Cohort Color - Foundational/Advanced/Complex"

FOUNDATIONAL

1. Create a DynamoDB table for something of your choosing (e.g. movies, food, games)
2. Add 10 or more items to the table
3. Create a t.2micro Ec2 instance
4. Using an IAM role and the principle of least privilege, grant the EC2 instance read access to DynamoDB.
5. Use the AWS CLI in the EC2 instance to scan the DynamoDB table
6. Use the AWS CLI in the EC2 instance to validate you cannot write an item to the DynamoDB table

**NOTE: The AWS CLI on the EC2 should not be using your IAM Access keys (Do Not Run AWS Configure in the EC2). This is how we verify the role is working correctly and not your permissions.**

ADVANCED:
After you've completed the Foundational project, Do everything using the CLI.

COMPLEX:
After you’ve completed the ADVANCED, create the DynamDB table, Attach IAM Role, Create EC2 Instance using a CloudFormation template. Then SSH into the instance and preform the scan using the EC2 AWS CLI.