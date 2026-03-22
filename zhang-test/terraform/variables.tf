variable "prefix" {
  type        = string
  description = "Resource name prefix"
  default     = "tf"   
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR block"
}

variable "subnet_cidr" {
  type        = string
  description = "Subnet CIDR block"
  default     = "10.0.1.0/24"
}
