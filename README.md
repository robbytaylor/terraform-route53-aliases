# terraform-route53-aliases

Terraform module create multiple Route53 Aliases, e.g. for CloudFront

I use this in combination with https://github.com/robbytaylor/terraform-static-website-redirection to create the associated Route53 aliases for a CloudFront distribution.

## Example Usage

```

module route53_aliases {
  source        = "github.com/robbytaylor/terraform-route53-aliases"
  zone          = "example.com"
  records       = ["example.com", "www.example.com"]
  alias_name    = module.website.cloudfront_domain_name
  alias_zone_id = module.website.cloudfront_zone_id
}

```
