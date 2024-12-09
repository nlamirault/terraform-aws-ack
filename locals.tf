# Copyright (C) Nicolas Lamirault <nicolas.lamirault@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0

locals {
  custom_policies = [
    "acm",
    "cloudwatchlogs",
    "eks",
    "emrcontainers",
    "iam",
    "kinesis",
    "kms",
    "lambda",
    "networkfirewall",
    "prometheusservice",
    "recyclebin"
  ]
  services = {
    "acmcontroller" = {
      AckAcmController = aws_iam_policy["acmcontroller"].arn
    }
    "cloudwatchlogs" = {
      AckCloudwatchLogsController = aws_iam_policy["cloudwatchlogs"].arn
    }

    "eks" = {
      AckEksController = aws_iam_policy["eks"].arn
    }
    "emrcontainers" = {
      AckEmrContainersController = aws_iam_policy["emrcontainers"].arn
    }
    "iam" = {
      AckIamController = aws_iam_policy["iam"].arn
    }
    "kinesis" = {
      AckKinesisController = aws_iam_policy["kinesis"].arn
    }
    "kms" = {
      AckKmsController = aws_iam_policy["kms"].arn
    }
    "lambda" = {
      AckLambdaController = aws_iam_policy["lambda"].arn
    }
    "networkfirewall" = {
      AckNetworkFirewallController = aws_iam_policy["networkfirewall"].arn
    }
    "prometheusservice" = {
      AckPrometheusServiceController = aws_iam_policy["prometheusservice"].arn
    }
    "recyclebin" = {
      AckRecycleBinController = aws_iam_policy["recyclebin"].arn
    }

    # AWS Managed

    "acmpca" = {
      AWSPrivateCAFullAccess = "arn:aws:iam::aws:policy/AWSPrivateCAFullAccess"
    }
    "documentdb" = {
      AmazonDocDBFullAccess = "arn:aws:iam::aws:policy/AmazonDocDBFullAccess"
    }
    "apigatewayv2" = {
      AmazonAPIGatewayAdministrator    = "arn:aws:iam::aws:policy/AmazonAPIGatewayAdministrator",
      AmazonAPIGatewayInvokeFullAccess = "arn:aws:iam::aws:policy/AmazonAPIGatewayInvokeFullAccess"
    }
    "applicationautoscaling" = {
      PowerUserAccess = "arn:aws:iam::aws:policy/PowerUserAccess"
    }
    "cloudfront" = {
      CloudFrontFullAccess = "arn:aws:iam::aws:policy/CloudFrontFullAccess"
    }
    "cloudwatch" = {
      CloudWatchFullAccessV2 = "arn:aws:iam::aws:policy/CloudWatchFullAccessV2"
    }
    "dynamodb" = {
      AmazonDynamoDBFullAccess = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
    }
    "ec2" = {
      AmazonEC2FullAccess = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
    }
    "ecs" = {
      AmazonECS_FullAccess = "arn:aws:iam::aws:policy/AmazonECS_FullAccess"
    }
    "efs" = {
      AmazonElasticFileSystemFullAccess = "arn:aws:iam::aws:policy/AmazonElasticFileSystemFullAccess"
    }
    "elb" = {
      ElasticLoadBalancingFullAccess = "arn:aws:iam::aws:policy/ElasticLoadBalancingFullAccess"
    }
    "ecr" = {
      AmazonEC2ContainerRegistryFullAccess = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"
    }
    "elasticache" = {
      AmazonElastiCacheFullAccess = "arn:aws:iam::aws:policy/AmazonElastiCacheFullAccess"
    }
    "eventbridge" = {
      AmazonEventBridgeFullAccess = "arn:aws:iam::aws:policy/AmazonEventBridgeFullAccess"
    }
    "kafka" = {
      AmazonMSKFullAccess = "arn:aws:iam::aws:policy/AmazonMSKFullAccess"
    }
    "keyspaces" = {
      AmazonKeyspacesFullAccess = "arn:aws:iam::aws:policy/AmazonKeyspacesFullAccess"
    }
    "lambda" = {
      AWSLambda_FullAccess = "arn:aws:iam::aws:policy/AWSLambda_FullAccess"
    }
    "memorydb" = {
      AmazonMemoryDBFullAccess = "arn:aws:iam::aws:policy/AmazonMemoryDBFullAccess"
    }
    "mq" = {
      AmazonMQApiFullAccess = "arn:aws:iam::aws:policy/AmazonMQApiFullAccess"
    }
    "opensearchservice" = {
      AmazonOpenSearchServiceFullAccess = "arn:aws:iam::aws:policy/AmazonOpenSearchServiceFullAccess"
    }
    "organization" = {
      AWSOrganizationsFullAccess = "arn:aws:iam::aws:policy/AWSOrganizationsFullAccess"
    }
    "pipes" = {
      AmazonEventBridgePipesFullAccess = "arn:aws:iam::aws:policy/AmazonEventBridgePipesFullAccess"
    }
    "rds" = {
      AmazonRDSFullAccess = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
    }
    "route53" = {
      AmazonRoute53FullAccess = "arn:aws:iam::aws:policy/AmazonRoute53FullAccess"
    }
    "route53resolver" = {
      AmazonRoute53ResolverFullAccess = "arn:aws:iam::aws:policy/AmazonRoute53ResolverFullAccess"
    }
    "s3" = {
      AmazonS3FullAccess = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
    }
    "sfn" = {
      AWSStepFunctionsFullAccess = "arn:aws:iam::aws:policy/AWSStepFunctionsFullAccess"
    }
    "sns" = {
      AmazonSNSFullAccess = "arn:aws:iam::aws:policy/AmazonSNSFullAccess"
    }
    "sqs" = {
      AmazonSQSFullAccess = "arn:aws:iam::aws:policy/AmazonSQSFullAccess"
    }
    "sagemaker" = {
      AmazonSageMakerFullAccess = "arn:aws:iam::aws:policy/AmazonSageMakerFullAccess"
    }
    "secretsmanager" = {
      SecretsManagerReadWrite = "arn:aws:iam::aws:policy/SecretsManagerReadWrite"
    }
    "sfn" = {
      AWSStepFunctionsFullAccess = "arn:aws:iam::aws:policy/AWSStepFunctionsFullAccess"
    }
    "sns" = {
      AmazonSNSFullAccess = "arn:aws:iam::aws:policy/AmazonSNSFullAccess"
    }
    "wafv2" = {
      AWSWAFFullAccess = "arn:aws:iam::aws:policy/AWSWAFFullAccess"
    }
  }
}
