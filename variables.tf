variable "tags" {
  default = {
    staging = "clare-staging"
    production = "clare-production"
  }
}

variable "security-group-name" {
  default = {
    staging = "clare-staging-sg"
    production = "clare-production-sg"
  }
}