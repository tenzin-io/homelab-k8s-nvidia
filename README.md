# README
A Terraform configuration repository to manage my home lab Kubernetes cluster with an Nvidia GPU.

<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](#provider\_vault) | 3.17.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cert_manager"></a> [cert\_manager](#module\_cert\_manager) | git::https://github.com/tenzin-io/terraform-tenzin-cert-manager.git | v0.0.2 |
| <a name="module_github_actions"></a> [github\_actions](#module\_github\_actions) | git::https://github.com/tenzin-io/terraform-tenzin-github-actions-runner-controller.git | v0.2.0 |
| <a name="module_nvidia_device_plugin"></a> [nvidia\_device\_plugin](#module\_nvidia\_device\_plugin) | git::https://github.com/tenzin-io/terraform-tenzin-nvidia-device-plugin.git | v0.1.0 |

## Resources

| Name | Type |
|------|------|
| [vault_generic_secret.cloudflare](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.github_app](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |
<!-- END_TF_DOCS -->
