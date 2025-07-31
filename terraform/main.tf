module "rg" {
  source   = "./modules/rg"
  name     = var.rg_name
  location = var.location
}

module "vnet" {
  source              = "./modules/vnet"
  name                = var.vnet_name
  location            = var.location
  resource_group_name = module.rg.name
}

module "subnet" {
  source              = "./modules/subnet"
  name                = "${var.vnet_name}-subnet"
  vnet_name           = module.vnet.name
  resource_group_name = module.rg.name
}

module "nsg" {
  source              = "./modules/nsg"
  name                = "${var.vnet_name}-nsg"
  location            = var.location
  resource_group_name = module.rg.name
}

module "vm" {
  source              = "./modules/vm"
  name                = var.vm_name
  location            = var.location
  resource_group_name = module.rg.name
  subnet_id           = module.subnet.id
  admin_username      = var.vm_username
  admin_password      = var.vm_password
}

