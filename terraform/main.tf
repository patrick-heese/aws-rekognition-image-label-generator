resource "aws_s3_bucket" "image_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "Rekognition Image Bucket"
    Environment = "Dev"
  }
}
