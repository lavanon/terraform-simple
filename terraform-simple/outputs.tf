output "success" {
  description = "Indicates the module ran successfully"
  value       = true
}

output "message" {
  description = "Success message including agent"
  value       = local.success_message
}


