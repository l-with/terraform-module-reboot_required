data "system_command" "count_var_run_reboot_required" {
  command = "ls -1q /var/run/reboot-required | wc -l"
  expect {
    stdout = true
  }
}

locals {
  reboot_required_count = data.system_command.count_var_run_reboot_required.stdout
}

data "system_command" "reboot" {
  command = "if [ ${local.reboot_required_count} == \"1\" ]; then reboot fi"
}

resource "time_sleep" "wait" {
  depends_on      = [data.system_command.reboot]
  create_duration = "${tonumber(local.reboot_required_count) * 42}s"
}

data "system_command" "connected" {
  depends_on = [time_sleep.wait]
  command    = ":"
}