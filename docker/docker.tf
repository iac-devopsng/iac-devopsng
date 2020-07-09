provider "docker" {}

resource "docker_container" "devopsng" {
    image = docker_image.dev_nginx.latest
    name = "devopsng_nginx"
    ports {
        internal = 80
        external = 9800
    }
}

resource "docker_image" "dev_nginx" {
    name = "nginx:alpine"
}