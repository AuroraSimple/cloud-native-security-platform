data "aws_iam_policy" "ebs_csi_v2" {
  name = "AmazonEBSCSIDriverPolicyV2"
}

data "aws_iam_policy_document" "ebs_csi_pod_identity" {
  statement {
    effect = "Allow"

    actions = [
      "sts:AssumeRole",
      "sts:TagSession"
    ]

    principals {
      type = "Service"

      identifiers = [
        "pods.eks.amazonaws.com"
      ]
    }
  }
}

resource "aws_iam_role" "ebs_csi" {
  name = "k8s-project-ebs-csi"

  assume_role_policy = data.aws_iam_policy_document.ebs_csi_pod_identity.json

  tags = {
    Name        = "k8s-project-ebs-csi"
    Project     = "k8s-project"
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}

resource "aws_iam_role_policy_attachment" "ebs_csi" {
  role       = aws_iam_role.ebs_csi.name
  policy_arn = data.aws_iam_policy.ebs_csi_v2.arn
}
