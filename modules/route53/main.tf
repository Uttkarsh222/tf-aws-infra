resource "aws_route53_record" "app_record" {
  zone_id = var.route53_zone_id
  name    = "${var.environment}.${var.domain_name}"
  type    = "A"

  alias {
    name                   = var.alb_dns_name
    zone_id                = var.alb_zone_id
    evaluate_target_health = true
  }
}
