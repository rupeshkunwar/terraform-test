output "ip_address" {
  value = digitalocean_droplet.accern.ipv4_address
  description = "The public IP address of your Droplet application."
}