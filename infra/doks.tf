resource "digitalocean_kubernetes_cluster" "ibdb" {
  name    = "ibdb"
  region  = "fra1"
  version = "1.21.11-do.1"
  ha = false
  
  node_pool {
    name       = "main-pool"
    size       = "s-4vcpu-8gb"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 5
  }

}

