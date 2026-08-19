resource "kubernetes_job_v1" "cifar10_training" {
  metadata {
    name      = "cifar10-train-job"
    namespace = "training"

    labels = {
      app       = "cifar10-training"
      workload  = "gpu-training"
      managedby = "terraform"
    }
  }

  spec {
    backoff_limit = 1

    template {
      metadata {
        labels = {
          app = "cifar10-training"
        }
      }

      spec {
        restart_policy = "Never"

        security_context {
          fs_group = 1000
        }

        node_selector = {
          role = "gpu"
        }

        toleration {
          key      = "dedicated"
          operator = "Equal"
          value    = "gpu-training"
          effect   = "NoSchedule"
        }

        container {
          name  = "trainer"
          image = var.training_image

          env {
            name  = "EPOCHS"
            value = "3"
          }

          env {
            name  = "REQUIRE_GPU"
            value = "1"
          }

          resources {
            limits = {
              "nvidia.com/gpu" = "1"
              cpu              = "2"
              memory           = "6Gi"
            }

            requests = {
              cpu    = "1"
              memory = "4Gi"
            }
          }

          volume_mount {
            name       = "model-output"
            mount_path = "/app/output"
          }
        }

        volume {
          name = "model-output"

          persistent_volume_claim {
            claim_name = kubernetes_persistent_volume_claim_v1.training_model.metadata[0].name
          }
        }
      }
    }
  }

  wait_for_completion = true

  timeouts {
    create = "30m"
    update = "30m"
  }
}
