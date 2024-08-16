variable "iam_role_name" {
  description = "Name of the IAM role for EKS"
  type        = string
  default     = "eks-cluster-role"
}