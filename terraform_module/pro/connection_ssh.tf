resource "null_resource" "web" {
  depends_on = [time_sleep.wait_30_seconds]
  provisioner "remote-exec" {
    inline = ["echo 'wait for ssh connection'"]
    connection {    
      type     = "winrm"    
      user     = ""    
      password = ""    
      host     = proxmox_vm_qemu.test_server.ssh_host
      port=5986
      insecure = true
      https = true
      timeout  = "2m"
    }
    
  }
     
  provisioner "local-exec" {
   command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook  -i hosts  -l ${proxmox_vm_qemu.test_server.ssh_host} ./terraform_module/ansible/windows_test.yml -e ansible_user= -e ansible_password= -e ansible_connection=winrm -e ansible_winrm_server_cert_validation=ignore -e ansible_port=5986 -e 'target_host=${proxmox_vm_qemu.test_server.ssh_host}'"
  }
}
