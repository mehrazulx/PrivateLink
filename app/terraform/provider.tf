terraform {
  backend "s3" {
    bucket = "helloworld-tfstate123"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}
