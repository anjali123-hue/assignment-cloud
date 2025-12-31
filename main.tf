provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "data_bucket" {
  bucket = "event-driven-data-bucket"
}

resource "aws_lambda_function" "data_processor" {
  function_name = "data_processor"
  runtime       = "python3.9"
  handler       = "index.handler"
}
