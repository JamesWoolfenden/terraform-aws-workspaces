variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map
}

variable "root_volume_encryption_enabled" {
  type    = bool
  default = true

}

variable "user_volume_encryption_enabled" {
  type    = bool
  default = true
}

variable "volume_encryption_key" {
  type        = string
  description = "(optional) describe your variable"
  default     = "alias/aws/workspaces"
}

variable "user_name" {
  type = string
}

variable "directory_id" {
  type        = string
  description = "(optional) describe your variable"
}

variable "bundle_id" {
  type        = string
  description = "(optional) describe your variable"
  default     = "wsb-bh8rsxt14"
}
