<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.4.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.61.0 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | >= 15.10.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_gitlab_group_project"></a> [gitlab\_group\_project](#module\_gitlab\_group\_project) | git::https://github.com/shaytan4/gitlab-group-project.git | v1.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_group_name"></a> [group\_name](#input\_group\_name) | Gitlab group name | `string` | `"TF_LESSON222222"` | no |
| <a name="input_proj_name"></a> [proj\_name](#input\_proj\_name) | Gitlab project name | `string` | `"TF_PROJ102222222"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_project_web_url"></a> [project\_web\_url](#output\_project\_web\_url) | Project web url |
<!-- END_TF_DOCS -->