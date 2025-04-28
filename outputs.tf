output "eventbridge_read_role_arn" {
  description = "The ARN of the EventBridge read role."
  value       = aws_iam_role.eventbridge_read_role.arn
}

output "eventbridge_read_policy_arn" {
  description = "The ARN of the EventBridge read policy."
  value       = aws_iam_policy.eventbridge_read_policy.arn
}
