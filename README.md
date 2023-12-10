# terraform-IAC-ansible_playbook
A IAC code for terraform in Hasicorp configuration language , this will create a Environment to Host a Dynamic Web Application In AWS Cloud Provider, the Scope of this project is to restrict remote access to the private subnet directly
# An Infrstructure as Code Deployment
This will implement 2-tier architecture
![Untitled Diagram drawio (1)](https://github.com/Lourdez/terraform-IAC-ansible_playbook/assets/54675124/ace5f431-8b90-4c55-85dd-533fb4c69820)

this is a simple 2-tier architectural desing Creates 
+ VPC
+ Private and Public Subnet
+ internet gateway
+ Routetable
+ NAT gateway
+ EC2 Instance in both private and public subnet 

This Design will restrict internet access to private subnet , where private subnet can be only accessble through public subnet 

Example use case

Public subnet will contain static web app like login page

Private subnet will have middleware / Server application 

## how to run this Code 
+ Launch an EC2 instance and connect to it
+ update the machine [ubuntu - apt-get update && amazon-linux- yum update]
+ install git [ubuntu = apt install git && amazon-linux = yum install git]
+ $ git clone https://github.com/Lourdez/Terraform-IAC-HCL.git
+ $ chmod +x /src
+ $ ./ /src/install_terraform.sh (or) [click here](https://developer.hashicorp.com/terraform/install) and copy the instalation command paste it in the terminal , click enter
+ $ ./ /src/run-terraform.sh

to Delete the infrasturucture 
+ $ ./ /src/delete-infrastruture.sh
