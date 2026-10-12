data "tfe_current_user" "current_user_lookup" {
  for_each = var.current_user_lookup

}

