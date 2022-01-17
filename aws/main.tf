provider "aws"{
    region = "${var.AWS_REGION}"
}

terraform{
    backend "s3"{
        bucket = "rupeshaccern-s3-jenkins"
        key = "terraform backend/terraform-test.tfstate"
        region= "ap-south-1"
        encrypt = true
    }
}
locals {
    prefix = "${var.prefix}-${terraform.workspace}"
    common_tags = {
        environment = terraform.workspace
        project = var.project
        ManageBy = "terraform"
        Owner = "rupeshaccern"

    }
}