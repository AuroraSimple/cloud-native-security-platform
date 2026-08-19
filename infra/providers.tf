provider "aws" {
  region = "ap-northeast-2"
  default_tags {
    tags = {
      Project     = "k8s-project"
      Environment = "dev"
      ManagedBy   = "terraform"
    }
  }
}

data "aws_caller_identity" "current" {}