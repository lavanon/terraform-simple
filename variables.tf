variable "agent" {
  description = "Agent identifier or name"
  type        = string

  validation {
    condition     = length(trimspace(var.agent)) > 0
    error_message = "agent must be a non-empty string."
  }
}


