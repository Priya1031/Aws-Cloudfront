resource "aws_s3_bucket" "s" {
  bucket = "sspk3"

  tags = {
    Name = "buckets3"
  }
}

resource "aws_s3_bucket_acl" "s_acl" {
  bucket = aws_s3_bucket.s.id
  acl    = "public-read"
}
resource "aws_s3_bucket_object" "ss3" {
  bucket = "sspk3"
  key    = "priya.text"
  acl    = "public-read"
  source = "/root/practice/priya.text"
}
