terraform {
  required_version = "~> 1.1.3"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {}

resource "digitalocean_droplet" "accern" {
  image     = "docker-20-04"
  name      = "accern"
  region    = "blr1"
  size      = "s-4vcpu-8gb-amd"
  user_data = file("install.yaml")
}

