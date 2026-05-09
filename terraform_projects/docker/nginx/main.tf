# Pull the image
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

# Create the container
resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "my-terraform-container"
  ports {
    internal = 80
    external = 8080
  }
}