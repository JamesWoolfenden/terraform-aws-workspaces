output "workspace" {
  description = "The workspace"
  value       = aws_workspaces_workspace.example
}
output "directory" {
  description = "The directory"
  value       = aws_workspaces_directory.main
}
