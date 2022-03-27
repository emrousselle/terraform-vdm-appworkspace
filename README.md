# Vending Machine App Workspace Terraform Module

## Usage

```hcl
module "app_workspace" {
	source       = "terraform-vdm-appworkspace"

	organization = "my-tfc-organization"
	team_id      = "team_13d03"
	environment  = "development"
	short_name   = "app_a"
	long_name    = "Application A"

}

```

## Examples



## Requirements



## Providers


## Modules

No modules.

## Resources


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| organization | TFC organization name | `string` |  | yes |
| team_id | ID of the TFC Team which will have access to the workspace | `string` |  | yes |
| environment | Environment name | `string` |  | yes |
| short_name | Application name, short version (no space) | `string` | | yes |
| long_name | Application name, long version | `string` | | yes |

## Outputs

| Name | Description |
|------|-------------|
| workspace_id | ID of the created workspace |

## Authors

Module is maintained by [Emmanuel Rousselle](https://github.com/emrousselle)