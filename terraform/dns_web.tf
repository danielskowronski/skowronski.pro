resource "cloudflare_record" "at" {
  zone_id = var.cf_zone_id
  name    = var.dns_zone_name
  proxied = true
  type = "CNAME"
  value = aws_s3_bucket.bucket_main.website_endpoint
}
resource "cloudflare_record" "www" {
  zone_id = var.cf_zone_id
  name    = "www"
  proxied = true
  type = "CNAME"
  value = aws_s3_bucket.bucket_www.website_endpoint
}

resource "cloudflare_record" "google_verify" {
  zone_id = var.cf_zone_id
  name    = var.dns_zone_name
  type = "TXT"
  value = "google-site-verification=dxCsbKbY5oVRH1H16cIOQzdX_LOb66FoefAZpZnjbKs"
}

resource "cloudflare_record" "keybase_verify" {
  zone_id = var.cf_zone_id
  name    = "_keybase"
  type = "TXT"
  value = "keybase-site-verification=DEMI9i22oaufkAs279GuplH9Jx1fa_tLlcQ-w1gcYdE"
}
