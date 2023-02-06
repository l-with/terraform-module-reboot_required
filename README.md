# Terraform Module reboot required

Terraform module which reboots if required and wait for connect by [Terraform Provider for (Operating) System](https://registry.terraform.io/providers/neuspaces/system).

This is a terraform replacement for [Ansible Role reboot required](https://github.com/l-with/ansible-role-certbot).

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_system"></a> [system](#requirement\_system) | >= 0.3.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | >= 0.9.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_system"></a> [system](#provider\_system) | >= 0.3.0 |
| <a name="provider_time"></a> [time](#provider\_time) | >= 0.9.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [time_sleep.wait](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep) | resource |
| [system_command.connected](https://registry.terraform.io/providers/neuspaces/system/latest/docs/data-sources/command) | data source |
| [system_command.count_var_run_reboot_required](https://registry.terraform.io/providers/neuspaces/system/latest/docs/data-sources/command) | data source |
| [system_command.reboot](https://registry.terraform.io/providers/neuspaces/system/latest/docs/data-sources/command) | data source |

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->
