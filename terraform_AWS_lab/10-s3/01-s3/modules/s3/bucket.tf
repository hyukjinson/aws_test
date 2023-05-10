resource "aws_s3_bucket" "this" {
    bucket    =   "${var.prefix}-bucket"
    force_destroy = true

  
    tags = {
        Name                        =   "${var.prefix}-bucket"
        Managed_by                  =   "terraform"
    }
}

resource "aws_s3_bucket_acl" "this" {
    bucket = aws_s3_bucket.this.id
    acl    = "public-read"
    
}