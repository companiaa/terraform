// Provider Configuration
provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}

// Variable Definitions
variable "tenancy_ocid" {
  description = "OCID of the tenancy."
  default     = "ocid1.tenancy.oc1..aaaaaaaamatyt4gg56twkocgipf4szpxqd4doiy5eqwx6ufhfnk4ctcoa4zq"
}

variable "user_ocid" {
  description = "OCID of the user."
  default = "ocid1.user.oc1..aaaaaaaa3e4dbqtdoalthorv5jadei6gsbnfbwh5lmf7mrxgagecqttpn2ia"
}

variable "fingerprint" {
  description = "Fingerprint for the user's public key."
  default = "5c:0c:80:f5:1a:99:e8:c9:54:a3:d8:81:cd:34:c1:b1"
}

variable "private_key_path" {
  description = "Path to the user's private key file."
  default = "/-10-10-07-05.pem"
}

variable "region" {
  description = "The region to work in."
  default     = "us-phoenix-1"
}
