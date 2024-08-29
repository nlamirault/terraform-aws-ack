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

#############################################################################
# ACK Controller

variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster"
}

variable "namespace" {
  description = "The K8s namespace for ACK Controller resources"
  type        = string
  default     = "ack-system"
}

variable "ack_services" {
  description = "List of AWS services"
  type        = list(string)
  default     = []
}

variable "enable_irsa" {
  type        = bool
  description = "Enable IRSA resources"
}

variable "enable_pod_identity" {
  type        = bool
  description = "Enable EKS Pod Identity resources"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
}
