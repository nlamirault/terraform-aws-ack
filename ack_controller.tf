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

locals {
  ack_services_map = { for svc in var.ack_services : svc.name => svc }
}

##############################################################################
# IRSA

#tfsec:ignore:aws-iam-no-policy-wildcards
module "ack_irsa_role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts"
  version = "6.6.0"

  for_each = var.enable_irsa ? local.ack_services_map : {}

  name        = "ack-${each.value.name}-controller-irsa"
  description = "ACK ${upper(each.value.name)} controller IRSA role"

  oidc_providers = {
    main = {
      provider_arn               = data.aws_iam_openid_connect_provider.eks[0].arn
      namespace_service_accounts = ["${var.ack_controller_namespace}:ack-${each.value.name}-controller"]
    }
  }

  policies = {
    (each.value.name) = each.value.policy_arn
  }

  tags = var.tags
}

##############################################################################
# Pod Identity

data "aws_iam_policy_document" "pod_identity_trust" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole", "sts:TagSession"]

    principals {
      type        = "Service"
      identifiers = ["pods.eks.amazonaws.com"]
    }
  }
}

#tfsec:ignore:aws-iam-no-policy-wildcards
resource "aws_iam_role" "ack_pod_identity" {
  for_each = var.enable_pod_identity ? local.ack_services_map : {}

  name               = "ack-${each.value.name}-controller"
  description        = "ACK ${upper(each.value.name)} controller Pod Identity role"
  assume_role_policy = data.aws_iam_policy_document.pod_identity_trust.json

  tags = var.tags
}

resource "aws_iam_role_policy_attachment" "ack_pod_identity" {
  for_each = var.enable_pod_identity ? local.ack_services_map : {}

  role       = aws_iam_role.ack_pod_identity[each.key].name
  policy_arn = each.value.policy_arn
}

resource "aws_eks_pod_identity_association" "ack" {
  for_each = var.enable_pod_identity ? local.ack_services_map : {}

  cluster_name    = var.cluster_name
  namespace       = var.ack_controller_namespace
  service_account = "ack-${each.value.name}-controller"
  role_arn        = aws_iam_role.ack_pod_identity[each.key].arn

  tags = var.tags
}
