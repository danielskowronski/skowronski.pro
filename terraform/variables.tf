variable "dns_zone_name" {
  default = "skowronski.pro"
}

variable "cf_zone_id" {
  default = "9681da33d75ba73f7effed820323f897" 
  # https://dash.cloudflare.com/88589d93cc8f76b46b433d4937d5890e/skowronski.pro
}

variable "cf_worker_path" {
  default = "zWk1mahaMBzF1doY" 
  # random string but has to be in sync with ../web/layouts/partials/extend-header.html
}
