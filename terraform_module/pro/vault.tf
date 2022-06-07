data "vault_generic_secret" "proxmox_auth" {
  path    = "secrets/terraform"
  version = 3
}
data "vault_generic_secret" "ansible_auth" {
  path    = "secrets/terraform"
  version = 3
}