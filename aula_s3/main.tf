provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "techtrilha-aws-terraform-remote-state-dev"
    key    = "s3/s3.tfstate"
    region = "us-east-1"
  }
}

# resource "random_id" "bucket" {
#   byte_length = 4
# }

module "bucket" {
  source = "./s3"

  name       = "teste-techtrilha"
  versioning = true

  tags = {
    "Name" = "Bucket de teste"
  }
}
