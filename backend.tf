# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    bucket = "tf-learn-second"
    key    = "tfstate/TF_LESS4_GGG.tfstate"  # tfstate is folder on bucket, tfmodule1 is object\file
    region = "eu-north-1"    
  }
}
