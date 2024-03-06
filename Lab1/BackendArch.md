# Create a Decoupled Backend Architecture Using Lambda, SQS and DynamoDB
### Step1 Create SQS standard queue to send, store, and receive order messages
You will need to create an SQS standard queue to process the customer orders captured on the e-commerce website. You are also required to create a dead-letter-queue to ensure that you don't lose any orders that might have missing data or badly formatted data. Dead-letter queues are important because they provide a way to reprocess failed orders and debug application issues.
### What is Amazon Simple Queue Service?
Amazon Simple Queue Service (Amazon SQS) offers a secure, durable, and available hosted queue that lets you integrate and decouple distributed software systems and components. Amazon SQS offers common constructs such as dead-letter queues and cost allocation tags. It provides a generic web services API that you can access using any programming language that the AWS SDK supports.
