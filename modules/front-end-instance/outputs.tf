// Output Instance Public IP
output "instance_public_ip" {
  description = "The public IP of the Front End Instance."
  value       = oci_core_instance.front_end_instance.public_ip
}
