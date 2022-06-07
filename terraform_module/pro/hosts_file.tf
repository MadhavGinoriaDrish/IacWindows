resource "local_file" "host_key" {
  depends_on = [proxmox_vm_qemu.test_server]
  content    = proxmox_vm_qemu.test_server.ssh_host
  filename   = "hosts"
}