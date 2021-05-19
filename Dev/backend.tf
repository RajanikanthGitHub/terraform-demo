terraform {
  backend "s3" {
    bucket  = "demotfstate"
    key     = "global/s3/terraform.tfsate"
    region  = "us-east-1"
    encrypt = true
  }
}



