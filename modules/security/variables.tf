// Variable Definitions
variable "compartment_id" {
  description = "OCID of the compartment."
}

variable "vcn_id" {
  description = "OCID of the VCN."
}

variable "sec_list_display_name" {
  description = "Display name for the security list."
  default     = "Front_End_Sec_List"
}

variable "egress_protocol" {
  description = "Protocol for egress rules."
  default     = "all"
}

variable "egress_destination" {
  description = "Destination CIDR for egress rules."
  default     = "0.0.0.0/0"
}

variable "ingress_protocol" {
  description = "Protocol for ingress rules."
  default     = "6"  # TCP
}

variable "ingress_source" {
  description = "Source CIDR for ingress rules."
  default     = "0.0.0.0/0"
}

variable "ingress_tcp_min" {
  description = "Minimum TCP port for ingress rules."
  default     = 80
}

variable "ingress_tcp_max" {
  description = "Maximum TCP port for ingress rules."
  default     = 443
}
