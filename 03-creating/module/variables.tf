variable "environment" {
  description = "Environment name (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "my-project"
}

variable "app_name" {
  description = "Name of the application"
  type        = string
  default     = "web-app"
}

variable "region" {
  description = "AWS region or cloud region"
  type        = string
  default     = "us-west-2"
}

variable "password_config" {
  description = "Configuration for password generation"
  type = object({
    length          = number
    include_special = bool
    include_upper   = bool
    include_lower   = bool
    include_numeric = bool
  })
}

variable "port_range" {
  description = "Port range for application"
  type = object({
    min = number
    max = number
  })
}

variable "available_zones" {
  description = "List of available zones"
  type        = list(string)
}

variable "zone_count" {
  description = "Number of zones to select"
  type        = number
  default     = 2
}

variable "encryption_key_length" {
  description = "Length of encryption key in bytes"
  type        = number
  default     = 32
}