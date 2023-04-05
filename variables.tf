variable "aws_creds_file" {
  description = "value"
  type        = string
  default     = "~/.aws/credentials"
}

variable "gitlab_url" {
  description = "Gitlab server url"
  type        = string
  default     = "http://gitlab.local/api/v4/"
}

variable "gitlab_token" {
  description = "Gitlab server token"
  type        = string
  default     = "glpat-nHbxJ1L5zMPmyexYbTgg"
  sensitive   = true
}
