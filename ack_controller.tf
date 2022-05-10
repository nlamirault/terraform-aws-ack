# Copyright (C) 2021 Nicolas Lamirault <nicolas.lamirault@gmail.com>
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

module "ack_controller_role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-assumable-role-with-oidc"
  version = "4.24.1"

  for_each = var.ack_services

  create_role                   = true
  role_description              = format("ACK %s controller role", upper(each.value.name))
  role_name                     = format("ack-%s-controller", each.value.name)
  provider_url                  = data.eks.cluster_oidc_issuer_url
  role_policy_arns              = [each.value.policy_arn]
  oidc_fully_qualified_subjects = ["system:serviceaccount:%s:ack-%s-controller", var.ack_controller_namespace, each_value.name]
  tags                          = var.tags
}

resource "aws_iam_policy" "ack_eks" {
  name        = format("ack-%s-controller", var.ack_eks_name)
  description = format("Allow ACK controller to manage %s resources", upper(var.ack_eks_name))
  path        = "/"
  #tfsec:ignore:AWS099
  policy = file("${path.module}/eks_policy.json")
  tags = var.tags
}

module "alb_controller_role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-assumable-role-with-oidc"
  version = "4.24.1"

  create_role                   = true
  role_description              = format("ACK %s controller role", upper(var.ack_eks_name))
  role_name                     = format("ack-%s-controller", var.ack_eks_name)
  provider_url                  = data.eks.cluster_oidc_issuer_url
  role_policy_arns              = [aws_iam_policy.ack_eks.arn]
  oidc_fully_qualified_subjects = ["system:serviceaccount:%s:ack-%s-controller", var.ack_controller_namespace, var.ack_eks_name]
  tags                          = var.tags
}
