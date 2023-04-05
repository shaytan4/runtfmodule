terraform {
  required_version = ">=1.4.4"
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab" # got from url https://registry.terraform.io/providers/gitlabhq/gitlab
      version = ">= 15.10.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.61.0"
    }
  }
}