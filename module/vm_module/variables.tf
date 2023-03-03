# variable icini bos birakmak bunu git baska dizinde ara demektir. 
#o da gidip ana dizindeki main.tf bakacaktir. 
variable "vm_name" {

}

variable "resource_group_name" {
  
}

variable "location" {
    default = "UK South"
}

variable "username" {
  
}

variable "password" {
  
}

variable "subnet_id" {
  
}



# module klasöründe main.tf yazdiktan sonra icinde yazdigimiz var.resource lari variable lari 
# burada belirliyoruz