provider "aws" {
  region = "ap-south-1"
}

resource "aws_security_group" "lab" {
  name        = "terraform-cicd-lab-sg"
  description = "Security group managed by Terraform CI/CD lab"
  vpc_id      = "vpc-0366b900c79613938"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "terraform-cicd-lab-sg"
    Environment = "learning"
    ManagedBy   = "Terraform"
  }
}
