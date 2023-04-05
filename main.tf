# Configure backend
terraform {
  backend "s3" {
    bucket = "tf-learn-second"
    key    = "tfstate/tfmodule1"
    region = "eu-north-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region                   = var.s3_region
  shared_credentials_files = [var.aws_creds_file]
  profile                  = "default"
}

# Configure the GitLab Provider
provider "gitlab" {
  base_url = var.gitlab_url
  token    = var.gitlab_token
}

# Setup and configure our module
module "gitlab_group_project" {
  source = "git::https://github.com/shaytan4/gitlab-group-project.git?ref=v1.0.0"

  group_name = "TF_LESSON220"
  proj_name  = "TF_PROJ1200"
}
