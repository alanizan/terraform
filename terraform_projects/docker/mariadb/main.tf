# Pull the official MariaDB image
resource "docker_image" "mariadb" {
  name         = "mariadb:11.2" # It's a best practice to pin a specific version
  keep_locally = false
}

# Create a Docker volume to persist database data
resource "docker_volume" "mariadb_data" {
  name = "mariadb_terraform_data"
}

# Create and run the MariaDB container
resource "docker_container" "mariadb" {
  name  = "mariadb-server"
  image = docker_image.mariadb.image_id

  # Map port 3306 on the host to 3306 in the container
  ports {
    internal = 3306
    external = 3306
  }

  # Environment variables required by the MariaDB image
  env = [
    "MARIADB_ROOT_PASSWORD=SuperSecretRootPassword!", 
    "MARIADB_DATABASE=my_app_database",
    "MARIADB_USER=app_user",
    "MARIADB_PASSWORD=AppUserPassword123!"
  ]

  # Mount the persistent volume
  volumes {
    volume_name    = docker_volume.mariadb_data.name
    container_path = "/var/lib/mysql"
  }
}

# Output the container IP address for reference
output "container_ip" {
  description = "The internal IP address of the MariaDB container"
  value       = docker_container.mariadb.network_data[0].ip_address
}