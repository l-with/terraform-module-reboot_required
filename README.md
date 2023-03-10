# Terraform Module reboot required

Terraform module which reboots if required and wait for connect by [Terraform Provider for (Operating) System](https://registry.terraform.io/providers/neuspaces/system).

This is a terraform replacement for [Ansible Role reboot required](https://github.com/l-with/ansible-role-certbot).

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_null"></a> [null](#requirement\_null) | >= 3.2.1 |
| <a name="requirement_system"></a> [system](#requirement\_system) | >= 0.3.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | >= 0.9.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.1 |
| <a name="provider_system"></a> [system](#provider\_system) | 0.3.0 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.9.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [null_resource.reboot](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.wait](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [time_sleep.wait](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep) | resource |
| [system_command.count_var_run_reboot_required](https://registry.terraform.io/providers/neuspaces/system/latest/docs/data-sources/command) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_host"></a> [host](#input\_host) | the host to be rebooted (needed for provisioner) | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
