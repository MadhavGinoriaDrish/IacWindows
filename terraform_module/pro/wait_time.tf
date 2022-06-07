resource "time_sleep" "wait_30_seconds" {
  depends_on      = [proxmox_vm_qemu.test_server]
  create_duration = "2m"
}
