terraform {
  backend "s3" {
    bucket       = "k8s-project-terraform-state-653293366187"
    key          = "infra/terraform.tfstate"
    region       = "ap-northeast-2"
    encrypt      = true
    use_lockfile = true
  }
}
