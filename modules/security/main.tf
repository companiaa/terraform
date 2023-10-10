// Security List Resource Configuration
resource "oci_core_security_list" "sec_list" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = var.sec_list_display_name
  
  egress_security_rules {
    protocol    = var.egress_protocol
    destination = var.egress_destination
  }
  
  ingress_security_rules {
    protocol = var.ingress_protocol
    source   = var.ingress_source
    tcp_options {
      min = var.ingress_tcp_min
      max = var.ingress_tcp_max
    }
  }
}

# // Output Security List ID
# output "sec_list_id" {
#   description = "The OCID of the created security list."
#   value       = oci_core_security_list.sec_list.id
# }
