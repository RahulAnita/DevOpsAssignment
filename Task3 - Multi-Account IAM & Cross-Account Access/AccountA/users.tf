resource "aws_iam_user" "engine" {
  name = "engine"
}

resource "aws_iam_user" "ci" {
  name = "ci"
}

resource "aws_iam_user_group_membership" "group1_members" {
  user   = aws_iam_user.engine.name
  groups = [aws_iam_group.group1.name]
}

resource "aws_iam_user_group_membership" "group1_members2" {
  user   = aws_iam_user.ci.name
  groups = [aws_iam_group.group1.name]
}