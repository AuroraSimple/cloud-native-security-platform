resource "kubernetes_storage_class_v1" "training_gp3" {
  metadata {
    name = "gp3-training"
  }

  storage_provisioner    = "ebs.csi.aws.com"
  reclaim_policy         = "Delete"
  volume_binding_mode    = "WaitForFirstConsumer"
  allow_volume_expansion = true

  parameters = {
    type                        = "gp3"
    encrypted                   = "true"
    "csi.storage.k8s.io/fstype" = "ext4"
  }
}

resource "kubernetes_persistent_volume_claim_v1" "training_model" {
  metadata {
    name      = "training-model-pvc"
    namespace = "training"
  }

  spec {
    access_modes       = ["ReadWriteOnce"]
    storage_class_name = kubernetes_storage_class_v1.training_gp3.metadata[0].name

    resources {
      requests = {
        storage = "10Gi"
      }
    }
  }

  wait_until_bound = false
}
