// Output Security List ID
output "sec_list_id" {
  description = "The OCID of the created security list."
  value       = oci_core_security_list.sec_list.id
}
