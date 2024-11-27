terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0" # Escolha a versão que deseja usar
    }
  }

  required_version = ">= 1.3.0" # Versão mínima do Terraform
}