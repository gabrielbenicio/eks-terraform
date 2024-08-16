variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "key_name" {
  description = "The name of the SSH key pair to use for the EKS worker nodes"
  type        = string
}