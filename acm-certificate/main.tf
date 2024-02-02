resource "aws_acm_certificate" "certificate" {
    domain_name         = var.domain_name
    validation_method   = var.validation_method

    tags = {
        Environment = "test"
    }

    lifecycle {
        create_before_destroy = true
    }
}