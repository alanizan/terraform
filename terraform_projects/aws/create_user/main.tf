resource "aws_iam_user" "test_user" {
  name = "test-aws-user"
  path = "/test/"
  tags = {
    "createdby" = "terraform"
  }
}
resource "aws_iam_access_key" "user_access_keys" {
  user = aws_iam_user.test_user.name
}

output "access_key_id" {
  value = aws_iam_access_key.user_access_keys.id
}