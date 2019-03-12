data "aws_acm_certificate" "top_level" {
  domain      = "${var.domain_name}"
  types       = ["AMAZON_ISSUED"]
  most_recent = true
  provider    = "aws.virginia"
}

data "aws_route53_zone" "self" {
  name = "${var.domain_name}."
}

module "website" {
  source         = "./website"
  domain_name    = "${var.domain_name}"
  hosted_zone_id = "${data.aws_route53_zone.self.zone_id}"
  certificate    = "${data.aws_acm_certificate.top_level.arn}"
}
