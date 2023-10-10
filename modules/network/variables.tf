// Variable Definitions
variable "compartment_id" {
  description = "OCID of the compartment."
}

variable "cidr_block_vcn" {
  description = "CIDR block for the VCN."
  default     = "10.0.0.0/16"
}

variable "vcn_display_name" {
  description = "Display name for the VCN."
  default     = "Front_End_VCN"
}

variable "cidr_block_subnet" {
  description = "CIDR block for the subnet."
  default     = "10.0.0.0/24"
}

variable "subnet_display_name" {
  description = "Display name for the subnet."
  default     = "Front_End_Subnet"
}
