
resource "aws_iam_user" "normal_user" {
  username = "normaluser"
}

resource "aws_iam_user_policy_attachment" "normal_user_attachment" {
  user       = aws_iam_user.normaluser.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess" # Replace with the appropriate policy ARN
}

# Other resources...

# To destroy the user, you can use the 'terraform destroy' command.
