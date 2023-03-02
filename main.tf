terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.45.0"
    }
  }
}

provider "azurerm" {
      features  { 
  }
}
resource "azurerm_resource_group" "rg1" {
  name     = var.rg_name
  location = var.location
} # degiskenleri variables ile belirlemek basta en iyisi

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg1.name
  address_space       = ["10.60.0.0/22"]

}
resource "azurerm_subnet" "subnet1" {
  name                 = var.subnet1_name
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.60.0.0/24"]
}
resource "azurerm_subnet" "subnet2" {
  name                 = var.subnet2_name
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.60.1.0/24"]
}

module "vm1" {
  source = " ./module/vm_module"
  vm_name = "vm1"
  resource_group_name = azurerm_resource_group.rg1.name
  username = "mustafagok"
  password = "Pasword123"
  subnet_id = azurerm_subnet.subnet1.id

}