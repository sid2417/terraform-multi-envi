resource "aws_route53_record" "multi_envi_r53" {
  for_each = aws_instance.multi-envi
  zone_id = var.zone_id
  name    = startswith(each.key, "frontend") ? var.domain_name : "${each.key}.${var.domain_name}" 
  type    = "A"
  ttl     = 1
  records = startswith(each.key, "frontend") ? [each.value.public_ip] : [each.value.private_ip]
  allow_overwrite = true
}

# happywithyogamoney.fun

# db-dev
# backend-dev
# forntend-dev

# db-prod
# backend-prod
# frontend-prod


# db-prod = "t2.small"
# backend-prod = "t3.micro"
# frontend-prod = "t3.micro"