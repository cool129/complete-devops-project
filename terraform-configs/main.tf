terraform {
  required_providers {
    minikube = {
      source  = "scott-the-programmer/minikube"
      version = "0.4.2"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.17.0"
    }
  }
}

provider "minikube" {
    kubernetes_version = "v1.30.0"
}

resource "minikube_cluster" "minikube_docker" {
    driver = "docker"
    cluster_name = "complete-devops-project"
    addons = [
        "default-storageclass",
        "storage-provisioner"
    ]
}