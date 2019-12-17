data aws_route53_zone main {
  name = var.zone
}

resource aws_route53_record main {
  count = length(var.records)

  zone_id = data.aws_route53_zone.main.zone_id
  name    = var.records[count.index]
  type    = "A"

  alias {
    name                   = var.alias_name
    zone_id                = var.alias_zone_id
    evaluate_target_health = var.evaluate_target_helath
  }
}
