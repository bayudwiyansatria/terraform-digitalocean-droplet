variable "project_id" {
  sensitive   = false
  type        = string
  description = "Digital Ocean Kubernetes Deployment Project Identifier"
}

variable "vpc_id" {
  sensitive   = false
  type        = string
  description = "VPC Network ID"
}

#---------------------------------------------------------------------------------------------------
# Servers
#---------------------------------------------------------------------------------------------------
variable "server_count" {
  type        = number
  description = "Number of servers"
  default     = 1
}

variable "server_name" {
  type = string
}

variable "server_type" {
  type        = string
  default     = "s-1vcpu-2gb"
}

variable "server_location" {
  type        = string
  description = "Server location"
  default     = "sgp1"
}

variable "server_distro" {
  type        = string
  description = "Predefined Image that will be used to spin up the machines"
  default     = "ubuntu-20-04-x64"
}

variable "server_keys" {
  type        = list(string)
  description = "SSH Public Key ID"
  default     = []
}

