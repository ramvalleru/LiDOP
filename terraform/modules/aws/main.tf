provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "lidop"
    key    = "lidop/terraform/"
    region = "eu-central-1"
  }
}
