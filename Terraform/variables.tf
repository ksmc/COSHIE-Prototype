variable "region" {
  description = "Default region to use in GCP"
  type        = string  
}

variable "project_id" {
  description = "Project ID"
  type        = string
}

variable "project_name" {
  description = "Project Name"
  type        = string
}

variable "org_id" {
  description = "Organization ID"
  type        = string
}

variable "credentials" {
  description = "Local File Path to Service Account Credentials JSON File"
  type        = string
}

variable "project_number" {
  description = "GCP Project Number"
  type        = string
}
