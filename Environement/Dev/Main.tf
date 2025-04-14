module "module_rg" {
  source         = "../../Modules/resource_group"
  resource_group = var.dev_resourcegroup
}
module "module_stg" {
  depends_on      = [module.module_rg]
  source          = "../../Modules/storage_account"
  storage_account = var.dev_storageaccount
}
module "module_vnet" {
  depends_on       = [module.module_rg]
  source           = "../../Modules/virtual_network"
  virtual_networks = var.dev_virtualnetwork

}
module "module_subnet" {
  depends_on = [module.module_vnet]
  source     = "../../Modules/subnet"
  subnets    = var.dev_subnet
}
module "module_linux_vm" {
  depends_on      = [module.module_subnet]
  source          = "../../Modules/virtual_machine_name"
  virtual_machine = var.dev_virtualmachine
}