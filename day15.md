# DevOps: Day 15

- Deploying and Exposing App to AWS.

- To be able to deploy an application on AWS:
   1. Find the git repository and clone it on your machine.
   2. Move inside the clone project.
   3. Test the project locally to confirm if it's working properly as it should.
   Note: IAM: Identity Access Management -> Helps to manage users and access.
   4. Goto IAM and create a user, although everything we needed to do with the new user can still be done with the root user, but it's not ethical. So best one create a new user for that. Either apply policies directly to the user or do it on a group and then add the user to the group. In this case, EC2 permissions is enough...!!! The full meaning of EC2 is Elastic Compute Cloud. It is used to set up remote servers using aws.
   5. Create a new instance of the EC2. Allow ssh traffic so that the ec2 instance can be accessed anywhere. 
   6. Connect your instance using ssh client (the simplest way to connect).
   7. Clone the application in the remote server.
   8. Move into the project you just cloned.
   9. Now run your application and make sure it's running.
   10. Edit/set the inbound rule to allow for traffic with the open internet. That's allow so that anyone can have access it from the internet.
   11. add a port/port range so that the port can be accessed on the internet, also add that it can be accessed from 0.0.0.0 which signifies anywhere on/in the earth.
   12. Finally you should be able to access your application with the ip of the server and the port you use in running the application. 
