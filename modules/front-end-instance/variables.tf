// Variable Definitions
variable "compartment_id" {
  description = "OCID of the compartment."
}

variable "availability_domain" {
  description = "Availability domain for the instance."
  default     = "Uocm:PHX-AD-1"
}

variable "instance_shape" {
  description = "Shape of the instance."
  default     = "CI.Standard.A1.Flex"
}

variable "boot_volume_type" {
  description = "Boot volume type for the instance."
  default     = "PARAVIRTUALIZED"
}

variable "subnet_id" {
  description = "OCID of the subnet."
}

variable "assign_public_ip" {
  description = "Assign a public IP to the instance."
  default     = true
}

variable "source_type" {
  description = "Source type for the instance."
  default     = "image"
}

variable "docker_image_id" {
  description = "OCID of the Docker image."
  default = "companiaa/projects:HerderoFrontEnd"
}

variable "instance_ocpus" {
  description = "Number of OCPUs for the instance."
  default     = 1
}

variable "instance_memory_in_gbs" {
  description = "Amount of memory in GBs for the instance."
  default     = 1
}

variable "instance_name" {
  description = "Name tag for the instance."
  default     = "Front_End_Instance"
}
