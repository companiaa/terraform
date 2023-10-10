// Network Module Configuration
module "network" {
  source                = "../../modules/network"
  compartment_id        = var.compartment_id
  cidr_block_vcn        = "10.0.0.0/16"
  vcn_display_name      = "Front_End_VCN"
  cidr_block_subnet     = "10.0.0.0/24"
  subnet_display_name   = "Front_End_Subnet"
}

// Security Module Configuration
module "security" {
  source                = "../../modules/security"
  compartment_id        = var.compartment_id
  vcn_id                = module.network.vcn_id
  sec_list_display_name = "Front_End_Sec_List"
  egress_protocol       = "all"
  egress_destination    = "0.0.0.0/0"
  ingress_protocol      = "6"  # TCP
  ingress_source        = "0.0.0.0/0"
  ingress_tcp_min       = 80
  ingress_tcp_max       = 443
}

// Front End Instance Module Configuration
module "front_end_instance" {
  source                = "../../modules/front-end-instance"
  compartment_id        = var.compartment_id
  availability_domain   = "Uocm:PHX-AD-1"
  instance_shape        = "CI.Standard.A1.Flex"
  boot_volume_type      = "PARAVIRTUALIZED"
  subnet_id             = module.network.subnet_id
  assign_public_ip      = true
  source_type           = "image"
  docker_image_id       = var.docker_image_id
  instance_ocpus        = 1
  instance_memory_in_gbs= 1
  instance_name         = "Front_End_Instance"
}

variable "compartment_id" {}
variable "docker_image_id" {}
