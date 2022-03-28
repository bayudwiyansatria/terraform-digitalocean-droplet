output "ids" {
  value = digitalocean_droplet.server.*.id
}

output "ips" {
  value = digitalocean_droplet.server.*.ipv4_address
}