# Terraform module for AWS Controllers for Kubernetes

## AWS Services

| Name                                                                                                                                          | Support |
| --------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
| [Amazon ACM](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-acm)                                             | x       |
| [Amazon Prometheus Service](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-prometheus-service)               | x       |
| [Amazon API Gateway](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-api-gateway)                             |         |
| [Amazon API Gateway v2](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-apigatewayv2)                         | x       |
| [Amazon Application Auto Scaling](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-application-auto-scaling)   | x       |
| [Amazon App Runner](https://aws-controllers-k8s.github.io/community/docs/community/services/#aws-app-runner)                                  |         |
| [Amazon Athena](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-athena)                                       |         |
| [Amazon Auto Scaling Plans](https://aws-controllers-k8s.github.io/community/docs/community/services/#aws-auto-scaling-plans)                  |         |
| [Amazon Backup](https://aws-controllers-k8s.github.io/community/docs/community/services/#aws-backup)                                          |         |
| [Amazon CloudFront](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-cloudfront)                               | x       |
| [Amazon CloudTrail](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-cloudtrail)                               | x       |
| [Amazon Cognito Identity Provider](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-cognito-identity-provider) |         |
| [Amazon DynamoDB](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-dynamodb)                                   | x       |
| [Amazon EC2](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-ec2)                                             | x       |
| [Amazon ECR](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-ecr)                                             | x       |
| [Amazon ECS](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-ecs)                                             | x       |
| [Amazon EKS](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-eks)                                             | x       |
| [Amazon ElasticCache](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-elasticache)                            | x       |
| [Amazon EFS](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-efs)                                             | x       |
| [Amazon SES](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-ses)                                             |         |
| [Amazon EMR Containers](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-emr-containers)                       | x       |
| [Amazon Elasticsearch Service](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-elasticsearch-service)         | x       |
| [Amazon EventBridge](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-eventbridge)                             | x       |
| [Amazon FSx](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-fsx)                                             |         |
| [Amazon IAM](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-iam)                                             | x       |
| [Amazon Kafka](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-kafka)                                         | x       |
| [Amazon Keyspaces](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-keyspaces)                                 | x       |
| [Amazon Kinesis](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-kinesis)                                     | x       |
| [Amazon KMS](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-kms)                                             | x       |
| [Amazon Lambda](https://aws-controllers-k8s.github.io/community/docs/community/services/#aws-lambda)                                          | x       |
| [Amazon CloudWatch Logs](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-cloudwatch-logs)                     | x       |
| [Amazon MemoryDB](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-memorydb)                                   | x       |
| [Amazon CloudWatch](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-cloudwatch)                               | x       |
| [Amazon MQ](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-mq)                                               | x       |
| [Amazon Neptune](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-neptune)                                     |         |
| [Amazon Network Firewall](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-network-firewall)                   | x       |
| [Amazon OpenSearch Service](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-opensearch-service)               | x       |
| [Amazon Organizations](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-organizations)                         | x       |
| [Amazon RAM](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-ram)                                             |         |
| [Amazon RecycleBin](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-recycle-bin)                              | x       |
| [Amazon RDS](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-rds)                                             | x       |
| [Amazon Route53](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-route-53)                                    | x       |
| [Amazon Route53 Resolver](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-route53resolver)                    | x       |
| [Amazon S3](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-s3)                                               | x       |
| [Amazon SageMager](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-sagemaker)                                 | x       |
| [AWS Secrets Manager](https://aws-controllers-k8s.github.io/community/docs/community/services/#aws-secrets-manager)                           | x       |
| [AWS Service Catalog](https://aws-controllers-k8s.github.io/community/docs/community/services/#aws-service-catalog)                           | x       |
| [Amazon SNS](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-sns)                                             | x       |
| [Amazon SQS](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-sqs)                                             | x       |
| [Amazon SSM](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-ssm)                                             |         |
| [Amazon SFN](https://aws-controllers-k8s.github.io/community/docs/community/services/#aws-sfn)                                                | x       |
| [Amazon WAFv2](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-wafv2)                                         | x       |

## Documentation

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

| Name                                                                     | Version  |
| ------------------------------------------------------------------------ | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement_aws)                   | >= 4.0.0 |

## Providers

| Name                                             | Version  |
| ------------------------------------------------ | -------- |
| <a name="provider_aws"></a> [aws](#provider_aws) | >= 4.0.0 |

## Modules

| Name                                                                    | Source                                                              | Version |
| ----------------------------------------------------------------------- | ------------------------------------------------------------------- | ------- |
| <a name="module_irsa"></a> [irsa](#module_irsa)                         | terraform-aws-modules/iam/aws//modules/iam-assumable-role-with-oidc | 5.42.0  |
| <a name="module_pod_identity"></a> [pod_identity](#module_pod_identity) | terraform-aws-modules/eks-pod-identity/aws                          | 1.4.0   |

## Resources

| Name                                                                                                               | Type        |
| ------------------------------------------------------------------------------------------------------------------ | ----------- |
| [aws_iam_policy.ack](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy)       | resource    |
| [aws_eks_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |

## Inputs

| Name                                                                                       | Description                                    | Type           | Default        | Required |
| ------------------------------------------------------------------------------------------ | ---------------------------------------------- | -------------- | -------------- | :------: |
| <a name="input_ack_services"></a> [ack_services](#input_ack_services)                      | List of AWS services                           | `list(string)` | `[]`           |    no    |
| <a name="input_cluster_name"></a> [cluster_name](#input_cluster_name)                      | Name of the EKS cluster                        | `string`       | n/a            |   yes    |
| <a name="input_enable_irsa"></a> [enable_irsa](#input_enable_irsa)                         | Enable IRSA resources                          | `bool`         | n/a            |   yes    |
| <a name="input_enable_pod_identity"></a> [enable_pod_identity](#input_enable_pod_identity) | Enable EKS Pod Identity resources              | `bool`         | n/a            |   yes    |
| <a name="input_namespace"></a> [namespace](#input_namespace)                               | The K8s namespace for ACK Controller resources | `string`       | `"ack-system"` |    no    |
| <a name="input_tags"></a> [tags](#input_tags)                                              | A map of tags to add to all resources          | `map(string)`  | n/a            |   yes    |

## Outputs

No outputs.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
