# Terraform module for AWS Controllers for Kubernetes

## AWS Services

| Name                                                                                                                                        | Support |
| ------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
| [Amazon ACM](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-acm)                                           | x       |
| [Amazon Prometheus Service](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-prometheus-service)             | x       |
| [Amazon API Gateway](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-api-gateway)                           |         |
| [Amazon API Gateway v2](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-apigatewayv2)                       | x       |
| [Amazon Application Auto Scaling](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-application-auto-scaling) | x       |
| [Amazon App Runner](https://aws-controllers-k8s.github.io/community/docs/community/services/#aws-app-runner)                                |         |
| [Amazon Athena](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-athena)                                     |         |
| [Amazon Auto Scaling Plans](https://aws-controllers-k8s.github.io/community/docs/community/services/#aws-auto-scaling-plans)                |         |
| [Amazon Backup](https://aws-controllers-k8s.github.io/community/docs/community/services/#aws-backup)                                        |         |
| [Amazon Cloudfront](https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-cloudfront)                             | x       |

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
| <a name="module_irsa"></a> [irsa](#module\_irsa) | terraform-aws-modules/iam/aws//modules/iam-assumable-role-with-oidc | 5.42.0 |
| <a name="module_pod_identity"></a> [pod\_identity](#module\_pod\_identity) | terraform-aws-modules/eks-pod-identity/aws | 1.4.0 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.ack](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_eks_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ack_services"></a> [ack\_services](#input\_ack\_services) | List of AWS services | `list(string)` | `[]` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name of the EKS cluster | `string` | n/a | yes |
| <a name="input_enable_irsa"></a> [enable\_irsa](#input\_enable\_irsa) | Enable IRSA resources | `bool` | n/a | yes |
| <a name="input_enable_pod_identity"></a> [enable\_pod\_identity](#input\_enable\_pod\_identity) | Enable EKS Pod Identity resources | `bool` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The K8s namespace for ACK Controller resources | `string` | `"ack-system"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources | `map(string)` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
