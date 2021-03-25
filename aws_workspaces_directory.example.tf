resource "aws_workspaces_directory" "main" {
  directory_id = data.aws_directory_service_directory.example.id

  self_service_permissions {
    increase_volume_size = true
    rebuild_workspace    = true
  }
  tags = var.common_tags
}
