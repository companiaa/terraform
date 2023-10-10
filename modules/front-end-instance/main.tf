// Instance Resource Configuration
resource "oci_core_instance" "front_end_instance" {
  compartment_id      = var.compartment_id
  availability_domain = var.availability_domain
  shape               = var.instance_shape
  
  launch_options {
    boot_volume_type = var.boot_volume_type
  }
  
  create_vnic_details {
    subnet_id        = var.subnet_id
    assign_public_ip = var.assign_public_ip
  }
  
  source_details {
    source_type = var.source_type
    source_id   = var.docker_image_id
  }
  
  shape_config {
    ocpus = var.instance_ocpus
    memory_in_gbs = var.instance_memory_in_gbs
  }
  
  freeform_tags = {
    Name = var.instance_name
  }
}

// Output Instance Public IP
# output "instance_public_ip" {
#   description = "The public IP of the Front End Instance."
#   value       = oci_core_instance.front_end_instance.public_ip
# }
