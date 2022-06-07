resource "proxmox_vm_qemu" "test_server" {
  name        = "windows10"
  target_node = "proxmoxserver"
  clone       = "windowsansible"
  full_clone  = true
  os_type     = "cloud-init"
  agent       =  1
  cores       =  2
  sockets = 1
  memory = 2048
  ipconfig0 = "ip=dhcp"
}
