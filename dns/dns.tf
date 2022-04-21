variable "domain" {}

variable "lb_ip" {}

resource "digitalocean_domain" "root" {
  name       = var.domain
  ip_address = var.lb_ip
}

resource "digitalocean_domain" "argocd" {
  name       = format("argocd.${var.domain}")
  ip_address = var.lb_ip
}
