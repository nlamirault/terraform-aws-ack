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

#tfsec:ignore:aws-iam-no-policy-wildcards
module "ack_eks_pod_identity" {
  source  = "terraform-aws-modules/eks-pod-identity/aws"
  version = "2.8.0"

  for_each = var.enable_pod_identity ? local.ack_services_map : {}

  name        = "ack-${each.value.name}-controller"
  description = "ACK ${upper(each.value.name)} controller Pod Identity role"

  additional_policy_arns = {
    (each.value.name) = each.value.policy_arn
  }

  associations = {
    main = {
      cluster_name    = var.cluster_name
      namespace       = var.ack_controller_namespace
      service_account = "ack-${each.value.name}-controller"
    }
  }

  tags = var.tags
}
