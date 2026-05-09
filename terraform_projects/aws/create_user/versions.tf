terraform {
  # Este es el bloque que mencionas
  cloud {
    organization = "mi-empresa-tech"
    workspaces {
      name = "proyecto-produccion"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}