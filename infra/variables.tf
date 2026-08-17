variable "region" {
  default = "ap-northeast-2"
}

variable "cluster_name" {
  default = "k8s-project-eks"
}

variable "cluster_version" {
  default = "1.35"
}

variable "vpc_cidr" {
  default = "10.20.0.0/16"
}

variable "azs" {
  default = ["ap-northeast-2a", "ap-northeast-2c"]
}

variable "gpu_desired_size" {
  default = 0
}