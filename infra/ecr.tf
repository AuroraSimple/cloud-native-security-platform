resource "aws_ecr_repository" "train" {
  name                 = "k8s-project/train"
  image_tag_mutability = "IMMUTABLE"
}

resource "aws_ecr_repository" "serving" {
  name                 = "k8s-project/serving"
  image_tag_mutability = "IMMUTABLE"
}