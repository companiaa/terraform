// VCN Resource Configuration
resource "oci_core_vcn" "vcn" {
  cidr_block     = var.cidr_block_vcn
  compartment_id = var.compartment_id
  display_name   = var.vcn_display_name
}

// Subnet Resource Configuration
resource "oci_core_subnet" "subnet" {
  cidr_block        = var.cidr_block_subnet
  compartment_id    = var.compartment_id
  vcn_id            = oci_core_vcn.vcn.id
  display_name      = var.subnet_display_name
}

# // Output Subnet ID
# output "subnet_id" {
#   description = "The OCID of the created subnet."
#   value       = oci_core_subnet.subnet.id
# }
