dev_resourcegroup= {
  "rg" = {
    name     = "rg-elearn-dev"
    location = "france central"
  }

}
dev_storageaccount = {
  "stg" = {
    name                     = "stgdev045578elearn"
    account_replication_type = "LRS"
    account_tier             = "Standard"
    location                 = "france central"
    resource_group_name      = "rg-elearn-dev"
  }

}
 dev_virtualnetwork = {
  "vnet" = {
    name                = "vnet-elearn-dev"
    location            = "france central"
    address_space       = ["10.0.0.0/24"]
    resource_group_name = "rg-elearn-dev"

  }
}

 dev_subnet = {
  "subnet" = {
    name                 = "frontend-subnet-elearn-dev"
    resource_group_name  = "rg-elearn-dev"
    virtual_network_name = "vnet-elearn-dev"
    address_prefixes     = ["10.0.0.0/26"]

  }
  "subnet1" = {
    name                 = "backend-subnet-elearn-dev"
    resource_group_name  = "rg-elearn-dev"
    virtual_network_name = "vnet-elearn-dev"
    address_prefixes     = ["10.0.0.64/26"]
  }
}


 dev_virtualmachine = {
  "vm1" = { vm_name = "dev-vm01"
    location             = "france central"
    resource_group_name  = "rg-elearn-dev"
    virtual_network_name = "vnet-elearn-dev"
    subnet_name          = "frontend-subnet-elearn-dev"
    admin_username       = "Sanidhya"
    admin_password       = "Sanidhya@123"
    nic_name             = "frontend-nic-elearn-dev"
    vm_size              = "Standard_B1s"
    ip_configuration = {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
    }

  }
  "vm2" = { vm_name = "dev_vm02"
    location             = "france central"
    resource_group_name  = "rg-elearn-dev"
    virtual_network_name = "vnet-elearn-dev"
    subnet_name          = "backend-subnet-elearn-dev"
    admin_username       = "Sanidhya"
    admin_password       = "Sanidhya@123"
    nic_name             = "backend-nic-elearn-dev"
    vm_size              = "Standard_B1s"
    ip_configuration = {
      name                          = "ipconfig2"
      private_ip_address_allocation = "Dynamic"
    }

  }
}