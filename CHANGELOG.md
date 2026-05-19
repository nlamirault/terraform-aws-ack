# Changelog

## [2.1.0](https://github.com/nlamirault/terraform-aws-ack/compare/v2.0.0...v2.1.0) (2026-05-19)


### 🚀 Features

* **github:** migrate OCI attestation to actions/attest@v4 with SLSA L3 ([#167](https://github.com/nlamirault/terraform-aws-ack/issues/167)) ([747d5c0](https://github.com/nlamirault/terraform-aws-ack/commit/747d5c044addd9cf5631014be8c7da422b1cf924))


### 🐛 Bug Fixes

* **github:** Remove unused action ([#168](https://github.com/nlamirault/terraform-aws-ack/issues/168)) ([72377b1](https://github.com/nlamirault/terraform-aws-ack/commit/72377b1e8a03abca8ed6b6db3f374385afac120d))
* **github:** revert setup-oras to v1.2.4 to fix startup_failure ([#172](https://github.com/nlamirault/terraform-aws-ack/issues/172)) ([81d15c5](https://github.com/nlamirault/terraform-aws-ack/commit/81d15c5462410da0ffcb730bc53f0c6055237b86))


### 🚨 Maintenance

* **deps:** update bridgecrewio/checkov-action action to v12.3102.0 ([#169](https://github.com/nlamirault/terraform-aws-ack/issues/169)) ([e77da29](https://github.com/nlamirault/terraform-aws-ack/commit/e77da2948ec6af8770daea6884a09369f22e964c))
* **deps:** update docker/login-action action to v4 ([#174](https://github.com/nlamirault/terraform-aws-ack/issues/174)) ([ca8688b](https://github.com/nlamirault/terraform-aws-ack/commit/ca8688bab6c49386c99dd0c9a5edd176bbfe72d5))
* **deps:** update hashicorp/setup-terraform action to v4 ([#161](https://github.com/nlamirault/terraform-aws-ack/issues/161)) ([02838b9](https://github.com/nlamirault/terraform-aws-ack/commit/02838b964a8fca4ea2488fc85cd5c5d8cfad5220))
* **deps:** update imjasonh/setup-crane action to v0.5 ([#157](https://github.com/nlamirault/terraform-aws-ack/issues/157)) ([6559d71](https://github.com/nlamirault/terraform-aws-ack/commit/6559d7112e53f6ded8f983559af6a56729248883))
* **deps:** update oras-project/setup-oras action to v2 ([#162](https://github.com/nlamirault/terraform-aws-ack/issues/162)) ([3bf6055](https://github.com/nlamirault/terraform-aws-ack/commit/3bf6055f23dd8f7b19fd9045d74190c880775b81))
* **deps:** update ossf/scorecard-action action to v2.4.3 ([#166](https://github.com/nlamirault/terraform-aws-ack/issues/166)) ([f3d4fd2](https://github.com/nlamirault/terraform-aws-ack/commit/f3d4fd251d45797a1d8d3b3b205970be200aad05))
* **deps:** update peter-evans/create-pull-request action to v8 ([#171](https://github.com/nlamirault/terraform-aws-ack/issues/171)) ([33aa84e](https://github.com/nlamirault/terraform-aws-ack/commit/33aa84e906a0310f6d4fe68cf8cfa8a6cce90e49))
* **deps:** update sigstore/cosign-installer action to v4.1.2 ([#173](https://github.com/nlamirault/terraform-aws-ack/issues/173)) ([95b9821](https://github.com/nlamirault/terraform-aws-ack/commit/95b9821316a7f3b4b30ecf7305c3e95d44bb4f56))
* **deps:** update step-security/harden-runner action to v2.19.3 ([#170](https://github.com/nlamirault/terraform-aws-ack/issues/170)) ([93ac14a](https://github.com/nlamirault/terraform-aws-ack/commit/93ac14a3ed99895920e594a72815a5d5a5b62e3f))
* **github:** fix oras push and sbom path for root-level module ([#163](https://github.com/nlamirault/terraform-aws-ack/issues/163)) ([90d5826](https://github.com/nlamirault/terraform-aws-ack/commit/90d5826a8c9535ba882484651bad5cb5c8deea1b))

## [2.0.0](https://github.com/nlamirault/terraform-aws-ack/compare/v1.0.0...v2.0.0) (2026-05-18)


### 🚀 Features

* **github-actions:** add OCI publish, security scan, and build workflows ([#139](https://github.com/nlamirault/terraform-aws-ack/pull/139))
* **iam:** add pod identity and irsa support for ack controllers ([#150](https://github.com/nlamirault/terraform-aws-ack/pull/150))


### 🚧 Changes

* **iam:** use eks-pod-identity module for pod identity ([#150](https://github.com/nlamirault/terraform-aws-ack/pull/150))


### 🚨 Maintenance

* bootstrap project with open source best practices ([#135](https://github.com/nlamirault/terraform-aws-ack/pull/135))
* add terraform security scanning workflow ([#153](https://github.com/nlamirault/terraform-aws-ack/pull/153))
* **github:** fix changelog sections and renovate semantic commits ([#156](https://github.com/nlamirault/terraform-aws-ack/pull/156))
* update `peter-evans/create-pull-request` action to v7 ([#115](https://github.com/nlamirault/terraform-aws-ack/pull/115))
* update `actions/checkout` action to v5 ([#124](https://github.com/nlamirault/terraform-aws-ack/pull/124))
* update `actions/checkout` action to v6.0.2 ([#144](https://github.com/nlamirault/terraform-aws-ack/pull/144))
* update `actions/upload-artifact` action to v7 ([#145](https://github.com/nlamirault/terraform-aws-ack/pull/145))
* update `github/codeql-action` action to v4 ([#146](https://github.com/nlamirault/terraform-aws-ack/pull/146))
* update `googleapis/release-please-action` action to v5 ([#147](https://github.com/nlamirault/terraform-aws-ack/pull/147))
* update `oras-project/setup-oras` action to v1.2.4 ([#149](https://github.com/nlamirault/terraform-aws-ack/pull/149))
* update `anchore/sbom-action` action to v0.24.0 ([#151](https://github.com/nlamirault/terraform-aws-ack/pull/151))
* update `docker/login-action` action to v3.7.0 ([#152](https://github.com/nlamirault/terraform-aws-ack/pull/152))
* update `terraform-aws-modules/iam/aws` Terraform module to v5.48.0 ([#117](https://github.com/nlamirault/terraform-aws-ack/pull/117))
* update `tflint-ruleset-aws` TFLint plugin to v0.34.0 ([#116](https://github.com/nlamirault/terraform-aws-ack/pull/116))
* update `tflint-ruleset-aws` TFLint plugin to v0.35.0 ([#118](https://github.com/nlamirault/terraform-aws-ack/pull/118))
* update `tflint-ruleset-aws` TFLint plugin to v0.42.0 ([#123](https://github.com/nlamirault/terraform-aws-ack/pull/123))
* update `tflint-ruleset-aws` TFLint plugin to v0.47.0 ([#132](https://github.com/nlamirault/terraform-aws-ack/pull/132))
* update `terraform-aws-modules/iam/aws` Terraform module to v6 ([#125](https://github.com/nlamirault/terraform-aws-ack/pull/125))
* update `terraform-aws-modules/iam/aws` Terraform module to v6.6.0 ([#134](https://github.com/nlamirault/terraform-aws-ack/pull/134))
