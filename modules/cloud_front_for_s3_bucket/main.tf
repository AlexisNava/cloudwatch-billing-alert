resource "aws_s3_bucket" "cloud_front_s3_bucket" {
  bucket = var.cloud_front_s3_bucket_name
  acl    = "public-read	"

  tags = var.cloud_front_s3_bucket_tags
}

resource "aws_cloudfront_distribution" "cloud_front_distribution_s3_bucket" {
  enabled = true
  
  origin {
    domain_name = aws_s3_bucket.cloud_front_s3_bucket.bucket_regional_domain_name
    origin_id   = aws_s3_bucket.cloud_front_s3_bucket.id
  }

  default_cache_behavior {
    allowed_methods  = ["GET", "HEAD"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = aws_s3_bucket.cloud_front_s3_bucket.id

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = "allow-all"
    min_ttl                = 0
    default_ttl            = 3600
    max_ttl                = 86400
  }
  
  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }
  
  tags = var.cloud_front_distribution_s3_bucket_tags

  viewer_certificate {
    cloudfront_default_certificate = true
  }
}