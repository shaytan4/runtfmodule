# Setup and configure our module
module "gitlab_group_project" {
  source = "git::https://github.com/shaytan4/gitlab-group-project.git?ref=v1.0.0"

  # simple way, with out tfvars file
  # group_name = "TF_LESSON220"
  # proj_name  = "TF_PROJ1200"

  # set vars , can be usefull with tfvars (-var-file) plan
  group_name = var.group_name
  proj_name  = var.proj_name

}
