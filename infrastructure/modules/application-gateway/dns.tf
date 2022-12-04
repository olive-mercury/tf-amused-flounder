data "aws_route53_zone" "primary" {
  name = "jamesrcounts.com"
}

resource "aws_route53_record" "aks" {
  zone_id = data.aws_route53_zone.primary.zone_id
  name    = var.hostname
  type    = "A"
  ttl     = "300"
  records = [azurerm_public_ip.agw.ip_address]
}