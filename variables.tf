variable "agent" {
  description = "Agent identifier or name"
  type        = string

  validation {
    condition     = length(trimspace(var.agent)) > 0
    error_message = "agent must be a non-empty string."
  }
}

variable "release" {
  description = "Release version or id"
  type        = string

  validation {
    condition     = length(trimspace(var.release)) > 0
    error_message = "release must be a non-empty string."
  }
}


