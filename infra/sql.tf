resource "digitalocean_database_cluster" "postgres-example" {
  name       = "ibdb-database"
  engine     = "pg"
  version    = "12"
  size       = "db-s-2vcpu-4gb"
  region     = "fra1"
  node_count = 1
}