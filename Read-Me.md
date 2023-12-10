#An Infrstructure as Code Deployment using Terraform 
this will implement the following architecture
![Untitled Diagram drawio (1)](https://github.com/Lourdez/terraform-IAC-ansible_playbook/assets/54675124/ace5f431-8b90-4c55-85dd-533fb4c69820)

this is a simple architectural desing Creates 
+VPC
+Private and Public Subnet
+internet gateway
+Routetable
+NAT gateway
+EC2 Instance in both private and public subnet 

this Design will restrict internet access to private subnet , where private subnet can be only accessble through public subnet 

Example use case
public subnet will contain static web app like login page 
private subnet will have middleware / Server application 

