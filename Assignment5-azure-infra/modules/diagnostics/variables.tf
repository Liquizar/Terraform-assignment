variable "name" {
    description = "The name of the diagnostic setting"
    type        = string
}

variable "target_resource_id" {
    description = "The ID of the resource to which the diagnostic settings will be applied"
    type        = string
}

variable "log_analytics_workspace_id" {
    description = "The ID of the Log Analytics workspace"
    type        = string
}
