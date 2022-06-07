output "proxmox_ip_address_default" {
  description = "Current IP Default"
  value       = proxmox_vm_qemu.test_server.ssh_host

}