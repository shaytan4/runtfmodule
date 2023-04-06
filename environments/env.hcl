# Set variables
locals {
  group_name  = "TF_LESS4"
  proj_name   = "GGG" 
  region      = "eu-north-1"

  gitlab_url = "http://gitlab.local/api/v4/"
  gitlab_token = "glpat-nHbxJ1L5zMPmyexYbTgg"

  aws_creds_file = "~/.aws/credentials"
}