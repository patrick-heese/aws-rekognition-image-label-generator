terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "image_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "Rekognition Image Bucket"
    Environment = "Dev"
  }
}

output "bucket_name" {
  description = "Name of the created S3 bucket"
  value       = aws_s3_bucket.image_bucket.bucket
}
