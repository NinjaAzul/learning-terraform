data "aws_cloudfront_distribution" "cloudfront_data" {
  id = aws_cloudfront_distribution.cloudfront.id

  depends_on = [aws_cloudfront_distribution.cloudfront]
}
