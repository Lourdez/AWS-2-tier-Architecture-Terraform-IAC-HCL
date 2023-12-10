# terraform-IAC-ansible_playbook
A IAC code for terraform in Hasicorp configuration language , this will create a Environment to Host a Dynamic Web Application In AWS Cloud Provider, the Scope of this project is to restrict remote access to the private subnet directly
# An Infrstructure as Code Deployment
this will implement the following architecture
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


