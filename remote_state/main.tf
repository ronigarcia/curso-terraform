provider "aws" {
  region = "${var.region}"
}

# resource "random_id" "bucket" {
#   byte_length = 4
# }

module "bucket" {
  source = "./modulo-s3"

  name       = "${var.bucket_name}-${var.env}"
  versioning = true

  tags = {
    "Env" = "${var.env}"
    "Name" = "Terraform Remote State"
  }
}
