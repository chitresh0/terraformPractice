resource "aws_iam_user_policy" "s3_list_only_policy" {
 name = "S3ListOnlyPolicy"
 user = aws_iam_user.spacelift_user.name

 policy = <<EOF
{
 "Version": "2012-10-17",
 "Statement": [{
   "Effect": "Allow",
   "Action": [
     "s3:ListAllMyBuckets"
   ],
   "Resource": "*"
 }]
}
 EOF
}