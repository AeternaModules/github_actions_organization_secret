resource "github_actions_organization_secret" "actions_organization_secrets" {
  for_each = var.actions_organization_secrets

  secret_name             = each.value.secret_name
  visibility              = each.value.visibility
  destroy_on_drift        = each.value.destroy_on_drift
  encrypted_value         = each.value.encrypted_value
  key_id                  = each.value.key_id
  plaintext_value         = each.value.plaintext_value
  selected_repository_ids = each.value.selected_repository_ids
  value                   = each.value.value
  value_encrypted         = each.value.value_encrypted
}

