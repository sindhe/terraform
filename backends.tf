terraform {
  backend "s3" {
    bucket = "YOUR-BUCKET-NAME"
    key    = "terraform.tfstate"
    region = "YOUR-REGION-NAME"
    dynamodb_table = "terraform-state-lock"

  }
}
