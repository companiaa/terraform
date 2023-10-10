# Network Module
module "network" {
  source          = "./modules/network"
  compartment_id  = var.compartment_id
}

# Security Module
module "security" {
  source          = "./modules/security"
  compartment_id  = var.compartment_id
  vcn_id          = module.network.vcn_id
}

# Front End Instance Module
module "front-end-instance" {
  source          = "./modules/front-end-instance"
  compartment_id  = var.compartment_id
  subnet_id       = module.network.subnet_id
}
