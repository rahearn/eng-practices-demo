terraform {
  required_version = "~> 1.0"
  required_providers {
    cloudfoundry = {
      source  = "cloudfoundry-community/cloudfoundry"
      version = "0.15.0"
    }
  }

  backend "s3" {
    bucket  = "cg-b59e644b-ab7b-48ec-a966-90f1177cf8eb"
    key     = "terraform.tfstate.stage"
    encrypt = "true"
    region  = "us-gov-west-1"
    profile = "eng_practices_demo-terraform-backend"
  }
}
