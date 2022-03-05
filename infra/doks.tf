resource "digitalocean_kubernetes_cluster" "ibdb" {
  name    = "ibdb"
  region  = "fra1"
  version = "1.20.2-do.0"

  node_pool {
    name       = "main-pool"
    size       = "s-2vcpu-2gb"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 5
  }

}

