terraform {

  backend "s3" {

    bucket       = "nerdinindia1234"
    key          = "learning/cicd-lab/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true



  }

}
