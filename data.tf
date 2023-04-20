data "vault_generic_secret" "github_app" {
  path = "secret/github_app"
}

data "vault_generic_secret" "cloudflare" {
  path = "secret/cloudflare"
}
