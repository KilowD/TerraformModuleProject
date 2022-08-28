variable "vpc-id" {}
locals {
  ingress_rules = [
    {
      port        = 80
      description = "http access"
    },
    {
      port        = 443
      description = "https access"
  }]
}
