variable "iam_role_name" {
  description = "The name of the IAM role to create."
  type        = string
  default     = "keh-eventbridge-read-role"
}

variable "iam_policy_name" {
  description = "The name of the IAM policy to create."
  type        = string
  default     = "keh-eventbridge-read-policy"
}

variable "env" {
  description = "The environment for the IAM role."
  type        = string
}

variable "jenkins_role_arn" {
  description = "The ARN of the Jenkins role to assume."
  type        = string
}
