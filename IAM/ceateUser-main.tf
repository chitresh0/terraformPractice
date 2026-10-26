terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 4.0"
   }
 }
}

provider "aws" {
 region = "us-east-1"
}

resource "aws_iam_user" "spacelift_user" {
 name = "spacelift-user"
}

resource "aws_iam_user_login_profile" "spacelift_user_login_profile" {
 user    = aws_iam_user.spacelift_user.name
}

output "password" {
 value = aws_iam_user_login_profile.spacelift_user_login_profile.password
}