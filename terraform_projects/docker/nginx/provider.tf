terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

# On Mac, the host is usually the local unix socket
provider "docker" {
  host = "unix:///var/run/docker.sock"
}
