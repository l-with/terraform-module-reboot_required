data "system_command" "count_var_run_reboot_required" {
  command = "ls -1q /var/run/reboot-required | wc -l"
  expect {
    stdout = true
  }
}

locals {
  reboot_required_count = tonumber(trim(base64decode(data.system_command.count_var_run_reboot_required.stdout), "\n"))
}

resource "null_resource" "reboot" {
  provisioner "remote-exec" {
    inline = ["if [ ${local.reboot_required_count} = 1 ]; then reboot; fi"]

    connection {
      host  = var.host
      type  = "ssh"
      user  = "root"
      agent = true
    }
  }
}

resource "null_resource" "wait" {
  depends_on = [null_resource.reboot]
  provisioner "remote-exec" {
    inline = ["echo server is ready!"]

    connection {
      host  = var.host
      type  = "ssh"
      user  = "root"
      agent = true
    }
  }
}
