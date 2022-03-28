resource "digitalocean_project_resources" "project_resources" {
  count     = var.server_count
  project   = var.project_id
  resources = [
    digitalocean_droplet.server[count.index].urn
  ]
  depends_on = [
    digitalocean_droplet.server
  ]
}

#---------------------------------------------------------------------------------------------------
# Droplet
#---------------------------------------------------------------------------------------------------
resource "digitalocean_droplet" "server" {
  count    = var.server_count
  name     = "${var.server_name}-${count.index + 1}"
  image    = var.server_distro
  ssh_keys = var.server_keys
  region   = var.server_location
  size     = var.server_type
  vpc_uuid = var.vpc_id
}