terraform {
  backend "s3" {
    bucket         = "terraform-state-prod"
    key            = "ec2/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
