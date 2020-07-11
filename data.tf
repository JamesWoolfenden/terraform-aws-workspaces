
data "aws_workspaces_bundle" "bundle" {
  bundle_id = var.bundle_id
}

data "aws_directory_service_directory" "example" {
  directory_id = var.directory_id
}
