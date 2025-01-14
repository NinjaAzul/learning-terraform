data "aws_s3_bucket" "bucket_data" {
  bucket = aws_s3_bucket.s3_bucket.id
  depends_on = [aws_s3_bucket.s3_bucket]
}
