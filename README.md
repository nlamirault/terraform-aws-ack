# Terraform module for AWS ACK

![Tfsec](https://github.com/nlamirault/terraform-aws-teleport/workflows/Tfsec/badge.svg)

## Documentation

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.0.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ack_controller_role"></a> [ack\_controller\_role](#module\_ack\_controller\_role) | terraform-aws-modules/iam/aws//modules/iam-assumable-role-with-oidc | 5.0.0 |
| <a name="module_alb_controller_role"></a> [alb\_controller\_role](#module\_alb\_controller\_role) | terraform-aws-modules/iam/aws//modules/iam-assumable-role-with-oidc | 5.0.0 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.ack_eks](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_eks_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ack_controller_namespace"></a> [ack\_controller\_namespace](#input\_ack\_controller\_namespace) | The K8s namespace for ALB Controller resources | `string` | `"ack-system"` | no |
| <a name="input_ack_controller_role_name"></a> [ack\_controller\_role\_name](#input\_ack\_controller\_role\_name) | The name of the ACK Controller IAM role | `string` | `"ack-controller"` | no |
| <a name="input_ack_services"></a> [ack\_services](#input\_ack\_services) | List of AWS services | <pre>list(object({<br>    name       = string<br>    policy_arn = string<br>  }))</pre> | <pre>[<br>  {<br>    "name": "apigatewayv2",<br>    "policy_arn": "arn:aws:iam::aws:policy/AmazonAPIGatewayAdministrator"<br>  },<br>  {<br>    "name": "applicationautoscaling",<br>    "policy_arn": "arn:aws:iam::aws:policy/PowerUserAccess"<br>  },<br>  {<br>    "name": "dynamodb",<br>    "policy_arn": "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"<br>  },<br>  {<br>    "name": "ec2",<br>    "policy_arn": "arn:aws:iam::aws:policy/AmazonEC2FullAccess"<br>  },<br>  {<br>    "name": "ecr",<br>    "policy_arn": "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"<br>  },<br>  {<br>    "name": "apigatewayv2",<br>    "policy_arn": "arn:aws:iam::aws:policy/AmazonAPIGatewayAdministrator"<br>  },<br>  {<br>    "name": "elasticache",<br>    "policy_arn": "arn:aws:iam::aws:policy/AmazonElastiCacheFullAccess"<br>  },<br>  {<br>    "name": "kms",<br>    "policy_arn": "arn:aws:iam::aws:policy/AWSKeyManagementServicePowerUser"<br>  },<br>  {<br>    "name": "lambda",<br>    "policy_arn": "arn:aws:iam::aws:policy/AWSLambda_FullAccess"<br>  },<br>  {<br>    "name": "mq",<br>    "policy_arn": "arn:aws:iam::aws:policy/AmazonMQApiFullAccess"<br>  },<br>  {<br>    "name": "opensearchservice",<br>    "policy_arn": "arn:aws:iam::aws:policy/AmazonOpenSearchServiceFullAccess"<br>  },<br>  {<br>    "name": "rds",<br>    "policy_arn": "arn:aws:iam::aws:policy/AmazonRDSFullAccess"<br>  },<br>  {<br>    "name": "s3",<br>    "policy_arn": "arn:aws:iam::aws:policy/AmazonS3FullAccess"<br>  },<br>  {<br>    "name": "sagemaker",<br>    "policy_arn": "arn:aws:iam::aws:policy/AmazonSageMakerFullAccess"<br>  },<br>  {<br>    "name": "sfn",<br>    "policy_arn": "arn:aws:iam::aws:policy/AWSStepFunctionsFullAccess"<br>  },<br>  {<br>    "name": "sns",<br>    "policy_arn": "arn:aws:iam::aws:policy/AmazonSNSFullAccess"<br>  }<br>]</pre> | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name of the EKS cluster | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources | `map(string)` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
