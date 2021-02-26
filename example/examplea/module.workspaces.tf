module "workspaces" {
  source       = "../../"
  directory_id = aws_directory_service_directory.noddy.id
  user_name    = "jhon.doe"
  common_tags  = var.common_tags
}
