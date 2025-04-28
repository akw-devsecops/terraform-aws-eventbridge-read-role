data "aws_iam_policy_document" "eventbridge_assume_role_policy" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = [var.jenkins_role_arn]
    }
  }
}

resource "aws_iam_role" "eventbridge_read_role" {
  name               = "${var.iam_role_name}-${var.env}"
  assume_role_policy = data.aws_iam_policy_document.eventbridge_assume_role_policy.json
}

data "aws_iam_policy_document" "eventbridge_read_policy" {
  statement {
    actions = [
      "events:ListRules",
      "events:DescribeRule",
      "events:ListEventBuses",
      "events:ListTagsForResource",
    ]
    resources = ["*"]
  }
}

resource "aws_iam_policy" "eventbridge_read_policy" {
  name   = "${var.iam_policy_name}-${var.env}"
  policy = data.aws_iam_policy_document.policy.json
}

resource "aws_iam_role_policy_attachment" "this" {
  role       = aws_iam_role.eventbridge_read_role.name
  policy_arn = aws_iam_policy.eventbridge_read_policy.arn
}
