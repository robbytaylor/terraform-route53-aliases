output records {
  value = aws_route53_record.main.*.fqdn
}
