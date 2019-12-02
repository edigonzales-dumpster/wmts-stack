provider "digitalocean" {}

resource "digitalocean_droplet" "wmts" {
    name  = "wmts-1"
    #image = "ubuntu-18-04-x64"
    image = "docker-18-04"
    region = "fra1"
    size   = "s-1vcpu-1gb"
    ssh_keys = [25503420,24397269]
}

resource "digitalocean_project" "playground" {
  name        = "playground"
  description = "A project to represent development resources."
  purpose     = "Web Application"
  environment = "Development"
  resources   = [digitalocean_droplet.wmts.urn]
}
