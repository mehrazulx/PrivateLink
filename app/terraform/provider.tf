terraform {
  backend "s3" {
    bucket = "mys3-privatelink"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}
