resource "aws_kms_key" "eks" {
  description             = "KMS key for EKS"
  deletion_window_in_days = 10
}

resource "aws_kms_alias" "eks_alias" {
  name          = "alias/eks-key"
  target_key_id = aws_kms_key.eks.id
}