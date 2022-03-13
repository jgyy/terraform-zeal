resource "random_string" "s3_random" {
  length  = 16
  upper   = false
  special = false
}

resource "aws_s3_bucket" "mys3" {
  bucket = "kplabs-attribute-demo-${random_string.s3_random.id}"
}

output "eip" {
  value = aws_eip.lb
}

output "mys3bucket" {
  value = aws_s3_bucket.mys3
}
