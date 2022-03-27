resource "tfe_workspace" "this" {
  name                = "${lower(var.short_name)}-${lower(var.environment)}"
  organization        = var.organization
  tag_names           = ["app:${var.short_name}", "env:${lower(var.environment)}"]
  description         = "${title(var.environment)} environment for ${var.long_name}"
  allow_destroy_plan  = lower(var.environment) != "production"
  global_remote_state = false
  auto_apply          = false
}

resource "tfe_team_access" "this" {
  team_id      = var.team_id
  workspace_id = tfe_workspace.this.id

  permissions {
    runs              = "apply"
    variables         = "write"
    state_versions    = "read-outputs"
    sentinel_mocks    = "none"
    workspace_locking = true
  }
}