<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.47 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.47 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.eventbridge_read_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.eventbridge_read_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy_document.eventbridge_assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.eventbridge_read_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env"></a> [env](#input\_env) | The environment for the IAM role. | `string` | n/a | yes |
| <a name="input_jenkins_role_arn"></a> [jenkins\_role\_arn](#input\_jenkins\_role\_arn) | The ARN of the Jenkins role to assume. | `string` | n/a | yes |
| <a name="input_iam_policy_name"></a> [iam\_policy\_name](#input\_iam\_policy\_name) | The name of the IAM policy to create. | `string` | `"keh-eventbridge-read-policy"` | no |
| <a name="input_iam_role_name"></a> [iam\_role\_name](#input\_iam\_role\_name) | The name of the IAM role to create. | `string` | `"keh-eventbridge-read-role"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eventbridge_read_policy_arn"></a> [eventbridge\_read\_policy\_arn](#output\_eventbridge\_read\_policy\_arn) | The ARN of the EventBridge read policy. |
| <a name="output_eventbridge_read_role_arn"></a> [eventbridge\_read\_role\_arn](#output\_eventbridge\_read\_role\_arn) | The ARN of the EventBridge read role. |
<!-- END_TF_DOCS -->