terraform {
  required_providers {
aws = {
   source  = "hashicorp/aws"
   version = "~> 4.18.0" }
   }
}
  backend "s3" {
    bucket    = "terraform-state-massive"
    key       = "terraform.tfstate"
    region    = var.backupregion
    encrypt   = true
  }
}
