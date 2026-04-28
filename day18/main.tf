terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

# Image
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

# Container
resource "docker_container" "nginx_server" {
  image = docker_image.nginx.image_id
  name  = "meetmux_web_server"

  ports {
    internal = 80
    external = 8080
  }
}