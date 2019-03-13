data "aws_acm_certificate" "top_level" {
  domain      = "${var.certificate_name}"
  types       = ["AMAZON_ISSUED"]
  most_recent = true
  provider    = "aws.virginia"
}

data "aws_route53_zone" "self" {
  name = "${var.certificate_name}."
}

module "website" {
  source         = "github.com/andyjp94/website-infra.git?ref="
  domain_name    = "${var.domain_name}"
  hosted_zone_id = "${data.aws_route53_zone.self.zone_id}"
  certificate    = "${data.aws_acm_certificate.top_level.arn}"
}
