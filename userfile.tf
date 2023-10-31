# Create a user with full access
resource "aws_iam_user" "admin_access_user" {
  name = "admin_USER"
}

# Create a policy with full access
resource "aws_iam_policy" "admin_access_policy" {
  name        = "admin_rights"
  description = "Policy with full access to AWS resources"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = "*"
        Resource = "*"
      }
    ]
  })
}

# Attach the full access policy to the user
resource "aws_iam_user_policy_attachment" "full_access_attachment" {
  user       = aws_iam_user.admin_access_user.name
  policy_arn = aws_iam_policy.admin_access_policy.arn
}

# Create a user with limited access
resource "aws_iam_user" "limited_access_user" {
  name = "normalUser"
}


