terraform {
  extra_arguments "conditional_vars" {
    commands = [
      "apply",
      "plan"    
    ]

    required_var_files = [
      "${get_parent_terragrunt_dir()}/environments/test.tfvars"
    ]
  }
}

# src https://www.nordhero.com/posts/mastering-deployments-with-terragrunt/
locals {
  env_vars    = read_terragrunt_config("./environments/env.hcl")
  # Extract the variables we need with the backend configuration
  group_name  = local.env_vars.locals.group_name
  proj_name   = local.env_vars.locals.proj_name
  region      = local.env_vars.locals.region
  
  gitlab_url  = local.env_vars.locals.gitlab_url
  gitlab_token = local.env_vars.locals.gitlab_token

  aws_creds_file = local.env_vars.locals.aws_creds_file
}

# make backend.tf file
generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  backend "s3" {
    bucket = "tf-learn-second"
    key    = "tfstate/${local.group_name}_${local.proj_name}.tfstate"  # tfstate is folder on bucket, tfmodule1 is object\file
    region = "${local.region}"    
  }
}
EOF
}

# make provider.tf
generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt" # Allow modules to override provider settings
  contents = <<EOF
provider "aws" {
  region                   = "${local.region}"
  shared_credentials_files = "${local.aws_creds_file}"
  profile                  = "default"
}

provider "gitlab" {
  base_url = "${local.gitlab_url}"
  token    = "${local.gitlab_token}"
}
EOF
}