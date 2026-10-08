resource "aws_iam_group" "group2" {
  name = "group2"
}

resource "aws_iam_user" "alice" {
  name = "alice"
}

resource "aws_iam_user" "bob" {
  name = "bob"
}