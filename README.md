What to achieve:

Infrastructure as Code (IaC) with Terraform
● Create an AWS VPC with two public and two private subnets.
● Implement an EC2 instance in one private subnet.
● Configure an Application Load Balancer (ALB) in one public subnet.
● Use Terraform for provisioning and managing the infrastructure.


To initiate this make sure that Terraform should be installed on the machine from where you are going to provision and manage your infra

Make sure you have not put your AWS CLI credentials in the code instead, you can store it somewhere else in your local system and provide your path or also can use an export command like export ACCESS_KEY="ACCESS_KEY_ID" and similarly need to do for secret key and region.

step 1: Create provider.tf file where you need to mention which cloud provider you are going to use with Terraform like AWS, AZURE OR GCP.
step 2: create module for vpc where I have created the below resource my defining it in main.tf, Basically all the networking configurations I have defined here.
        A. vpc
        B. internet_gateway 
        C. nat_eip 
        D. nat 
        E. 3 subnets 
        F. 2 rout tables (Public and private) 
        G. rout table association with subnets 
        H. elastic load balance with ingress-egress rules.

step 3: Crated the module EC2 defining the configuration of ec2 machine which needs to be provisioned.

step 4: create a Terraform module called TG that defines the configuration for a target group and attaches it to a load balancer. We'll also define a listener rule for the load balancer to forward traffic to the target group.

After running this you can see the below screenshot where resources are created on AWS.

![Screenshot from 2024-04-13 17-46-21](https://github.com/Akash-29-1995/terraform/assets/45091399/7729535c-1f1f-470e-b65a-4077914b67cc)

![Screenshot from 2024-04-13 17-46-28](https://github.com/Akash-29-1995/terraform/assets/45091399/d007a702-a2c6-4145-b726-a51fc7bdabf8)

![Screenshot from 2024-04-13 17-47-10](https://github.com/Akash-29-1995/terraform/assets/45091399/7972e87d-b333-4418-96bd-190749538941)

![Screenshot from 2024-04-14 15-10-38](https://github.com/Akash-29-1995/terraform/assets/45091399/97710ebb-fadc-4d13-989c-b4fc8dab0546)

![Screenshot from 2024-04-14 15-05-30](https://github.com/Akash-29-1995/terraform/assets/45091399/23faaf70-3ae3-41fc-bb31-b0c00e281f6d)

