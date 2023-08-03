terraform {
  backend "s3" {
    bucket         = "tenzin-io"
    key            = "terraform/homelab-k8s-nvidia.state"
    dynamodb_table = "tenzin-io"
    region         = "us-east-1"
  }
}

module "cert_manager" {
  source                  = "git::https://github.com/tenzin-io/terraform-tenzin-cert-manager.git?ref=v0.0.2"
  cert_registration_email = "tenzin@tenzin.io"
  cloudflare_api_token    = data.vault_generic_secret.cloudflare.data.api_token
}

module "github_actions" {
  source                     = "git::https://github.com/tenzin-io/terraform-tenzin-github-actions-runner-controller.git?ref=v0.2.0"
  github_org_name            = "tenzin-io"
  github_app_id              = data.vault_generic_secret.github_app.data.app_id
  github_app_installation_id = data.vault_generic_secret.github_app.data.installation_id
  github_app_private_key     = data.vault_generic_secret.github_app.data.private_key
  github_runner_labels       = ["homelab", "nvidia"]
  github_runner_image        = "containers.tenzin.io/docker/tenzin-io/actions-runner-images/nvidia-latest:v0.0.6"
  enable_nvidia_gpu          = true
}

module "nvidia_device_plugin" {
  source = "git::https://github.com/tenzin-io/terraform-tenzin-nvidia-device-plugin.git?ref=v0.1.0"
}
