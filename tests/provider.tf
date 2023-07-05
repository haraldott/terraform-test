terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.70"
    }
  }
}

provider "kubernetes" {
  config_context_cluster   = "minikube"
}