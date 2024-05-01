provider "aws" {
  alias  = "backupregion"
  region = "eu-west-1"
}

terraform {
  required_providers {
aws = {
   source  = "hashicorp/aws"
   version = "~> 4.18.0"
   region = af-south-1}
   }
}
  backend "s3" {
    bucket    = "terraform-state-massive"
    key       = "terraform.tfstate"
    region    = var.backupregion
    encrypt   = true
  }
}
