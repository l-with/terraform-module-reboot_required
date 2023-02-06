data "system_command" "count_var_run_reboot_required" {
  command = "ls -1q /var/run/reboot-required | wc -l"
  expect {
    stdout = true
  }
}

data "system_command" "reboot" {
  count   = tonumber(data.system_command.count_var_run_reboot_required.expect.stdout)
  command = "reboot"
}

resource "time_sleep" "wait" {
  depends_on      = [data.system_command.reboot]
  create_duration = "42s"
}

data "system_command" "connected" {
  depends_on = [time_sleep.wait]
  command    = ":"
}