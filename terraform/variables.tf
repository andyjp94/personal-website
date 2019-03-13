variable "domain_name" {
  type        = "string"
  description = "The domain name for the website."
}

variable "ref" {
  type        = "string"
  description = "The version of the terraform module that should be used."
}

variable "certificate_name" {
  type        = "string"
  default     = "andrewjohnperry.com"
  description = "The certificate domain, this varies from the domain name as this can be a wildcard."
}
