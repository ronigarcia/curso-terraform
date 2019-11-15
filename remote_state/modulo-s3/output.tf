output "name_out" {
  value = "${aws_s3_bucket.this.id}"
}

output "arn_out" {
  value = "${aws_s3_bucket.this.arn}"
}