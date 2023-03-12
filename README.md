       Terraform-AZ104-imp.png
       
       
       
       
       
       
        Step by step we can see our implementation:
1.	Open VS Code, from terminal, I clone my new repository to my local one. 
2.	In terminal, I create files main.tf, outputs.tf and variables.tf
3.	I take terraform and azure provider inputs from Hashicorp and put them into main.tf file.
4.	Take an Azure resource group block from Hashicorp and put it into main.tf
5.	We can specify resource name and location with variables file. 
6.	Take virtual network template from Hashicorp and put it into main.tf
7.	We can create subnet as a resource that we can call it from our file extra. So we need two subnet and I create it two pcs. 
8.	I specified rg_name, location. vnet_name, subnet_name as variable in variables file.
9.	In the terminal, I said terraform init and apply respectively.
10.	I created resource group, vnet and 2 pcs subnet in UK South region and deploy it in azure cloud by using terraform apply.  And also we will create 2 virtual machines.
11.	I created module folder in root directory and inside this folder I created main.tf, outputs.tf and variables.tf files. 
12.	 I want to create VMs with Windows 2019 server and standard b1s disk. I find the azurerm windows VM block with these features from hashicorp. And I put this template into the main.tf in the module_vm folder.  (BKZ: video dk39)
13.	I create module_vm folder and inside this folder create azure_vm resource and its requirements in main.tf file.  After creating vm_module folder, I do terraform init. 
14.	I go back to my main main.tf file in main directory and create vm1 and vm2 in azure using "main.tf" and "variables.tf" files which put in module_vm folder.   After I said terraform plan and apply, I also created two VMs. And I also check it in Azure. 
15.	I should also create a NSG (Network Security Group) as a resource and connect it to my VMs. I take the "azurerm nsg association subnet" block from Hashicorp. I connect the NSG to subnet1 and subnet2. We can connect NSGs to more than one resource. 
16.	In next step I need to create new resource group, public IP and load balancer respectively.   
17.	First I create a load balancer. To create a new load balancer I need frontend IP, backend pool (should be in rg1 resource group), health probe and inbound rules. For this I take azurerm_resource group, public IP, load balancer, backend_address pool and health probe blocks from Hashicorp and then configure it according to my project. 
18.	Second, I also create a resource load balancer rules and specify inbound and outbound rules.
19.	After implementation, we see the following screen on my terminal.