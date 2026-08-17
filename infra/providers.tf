provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Project     = "k8s-project"
      Environment = "dev"
      ManagedBy   = "terraform"
    }
  }
}