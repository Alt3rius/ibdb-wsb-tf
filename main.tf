terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

variable "do_token" {}

variable "domain" {}

variable "lb_ip" {}

provider "digitalocean" {
  token = var.do_token
}

module "infra" {
  source = "./infra"
}

module "dns" {
  source = "./dns"
  domain = var.domain
  lb_ip  = var.lb_ip
}