resource "docker_image" "mariadb" {
  name         = "mariadb:11.2"
  keep_locally = false
}

resource "docker_volume" "mariadb_data" {
  name = "mariadb_terraform_data"
}

resource "docker_container" "mariadb" {
  name  = "mariadb-server"
  image = docker_image.mariadb.image_id

  ports {
    internal = 3306
    external = 3306
  }

  # Reference the variables here using string interpolation
  env = [
    "MARIADB_ROOT_PASSWORD=${var.mariadb_root_password}", 
    "MARIADB_DATABASE=${var.mariadb_database}",
    "MARIADB_USER=${var.mariadb_user}",
    "MARIADB_PASSWORD=${var.mariadb_password}"
  ]

  volumes {
    volume_name    = docker_volume.mariadb_data.name
    container_path = "/var/lib/mysql"
  }
}

output "container_ip" {
  description = "The internal IP address of the MariaDB container"
  value       = docker_container.mariadb.network_data[0].ip_address
}