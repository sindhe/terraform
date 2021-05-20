resource "aws_s3_bucket" "lambda_s3_buckets" {
    bucket = "YOUR-BUCKET-NAME"
    acl    = "private"
    force_destroy = true

}

resource "aws_s3_bucket_object" "object" {
    bucket = "YOUR-BUCKET-NAME"
    key    = "YOUR-PATH-TO-STORE-LAMBDA-DEPLOYMENT"
    source = "lambda_function_payload.zip"

    depends_on = [
    aws_s3_bucket.lambda_s3_buckets,
    ]
}
