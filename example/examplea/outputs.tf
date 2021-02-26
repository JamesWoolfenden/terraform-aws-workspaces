output "workspace" {
  description = "The workspace"
  value       = module.workspaces.workspace
  sensitive   = true
}
output "directory" {
  description = "The directory"
  value       = module.workspaces.directory
}
