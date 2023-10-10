// Output Subnet ID
output "subnet_id" {
  description = "The OCID of the created subnet."
  value       = oci_core_subnet.subnet.id
}
