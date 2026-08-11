terraform {
  backend "s3" {
    bucket         = "cloud-devops-lab-2026-terraform-state-707575990308"
    key            = "cloud-devops-lab-2026/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "cloud-devops-lab-2026-terraform-locks"
  }
}
