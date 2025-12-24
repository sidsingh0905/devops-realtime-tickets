terraform {
  backend "s3" {
    bucket         = "shiva-devops-tf-state"
    key            = "dev/networking/terraform.tfstate"
    region         = "us-east-1"

    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
