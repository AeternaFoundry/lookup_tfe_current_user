variable "current_user_lookup" {
  description = <<EOT
Map of current_user_lookup, attributes below
EOT

  type = map(object({
  }))
  default = { all = {} }
}

