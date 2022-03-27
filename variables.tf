# Variables file
variable "organization" {
  type        = string
  description = "TFC organization name"
}

variable "team_id" {
  type        = string
  description = "Application Team ID"
}

variable "environment" {
  type        = string
  description = "Application environment"
}

variable "short_name" {
  type        = string
  description = "Application short name"
}

variable "long_name" {
  type        = string
  description = "Application long name"
}