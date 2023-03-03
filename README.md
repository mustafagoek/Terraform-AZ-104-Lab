# Terraform-AZ-104-Lab


            Step by step we can see our Implementation:
1.	Open VS Code, from terminal, I clone my  new repository to my local 
2.	In terminal, I create main.tf, outputs.tf and variables.tf files
3.	I take terraform and Azure provider inputs from HAshicorp and put into main.tf file.
4.	Take a Azure resource group block from Hashicorp and put into main.tf
5.	We can specify resource name and location with variables file. 
6.	Take virtual network template from Hashicorp and put it into main.tf
7.	We can create subnet as a resource that we can call it from our file extra. So we need two subnet, and I create it two pcs. 
8.	I specified rg_name, location. vnet_name, subnet_name as a variable in variables file.
9.	In the terminal, I said terraform init and apply, respectively.
10.	We created resource group, vnet and 2 pcs subnet in UK South region and deploy it in azure cloud by using terraform apply.  And also We will create 2 virtual machines.
11.	I created module folder in home directory and inside this folder I created main.tf, outputs.tf and variables.tf files. 
12.	 I want to create VMs which have Windows 2019 server and standard b1s disk. I find the azurerm windows VM block with these features from hashicorp. And I put this template into the main.tf in the module_vm folder.  (BKZ: video dk39)
13.	I create module_vm folder and inside this folder create azure_vm resource and their requirements in main.tf file.  After I created vm_module folder I make terraform init. 
14.	I go back to my main main.tf file on main directory and create vm1 and vm2 in Azure using “main.tf” and “variables.tf” files which place in module_vm folder.   After I said terraform plan and apply , I creted two VMs too. And I check it in Azure too. 
15.	I should also cerate  a NSG (network security group) as a resource and to connect this to my VMs. For this I take “azurerm nsg association subnet” block from Hashicorp. I connect the NSG to the subnet1 and subnet2. We can connect NSGs more than one resources. 
16.	In next step I need to create new resource group, public IP and Load Balancer respectively.   
17.	First I create a Load Balancer. For creating a new load balancer I need frontend IP, Backend Pool (should be in rg1 resource group), Health Probe and Inbound Rules. For that  I take azurerm_resource group, public IP, load balancer, backend_adress pool and Health Probe blocks from Hashicorp and then configure it according to my project. 
18.	Secondly I create also as a resource load balancer rules and specify inbound and outbound rules.
19.	After Implementation, we see following screen on my terminal. 


 



