  terraform {
  backend "s3" {
    bucket = "joyi-terraform-bucket"
    key    = "all_states/terraform.tfstate"
    region = "ap-south-1"
    # access_key     = ""
    # secret_key     = ""
  }
}
