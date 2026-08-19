variable "gpu_desired_size" {
  default = 0
}
variable "training_image" {
  description = "Container image used by the GPU training Job"
  type        = string
}
