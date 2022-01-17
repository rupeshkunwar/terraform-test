variable "prefix" {
    default = "terraform-test"
}
variable "project" {
    default = "terraform-test"
}

variable "AWS_REGION" {
  default = "ap-south-1"
}

variable "AMIS" {
  type = map(string)
  default = {
    ap-south-1 = "ami-0851b76e8b1bce90b"
  }
}
variable "INSTANCE_USERNAME" {
  default = "test-app"
}
variable "PATH_TO_PRIVATE_KEY" {
  default = "~/.ssh/id_rsa"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "~/.ssh/id_rsa.pub"
}