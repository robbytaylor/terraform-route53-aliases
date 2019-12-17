variable alias_name {
  type        = string
  description = "The domain name of the alias target"
}

variable alias_zone_id {
  type        = string
  description = "The zone ID name of the alias target"
}

variable records {
  type        = list(string)
  description = "The names of the Route53 records to create. For example, ['www.example.com', 'example.com']"
}

variable zone {
  type        = string
  description = "The name of the Route53 zone to create the records in. For example, example.com"
}

variable evaluate_target_helath {
  type    = bool
  default = true
}
