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

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.1 |
| <a name="provider_system"></a> [system](#provider\_system) | 0.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [null_resource.reboot](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [system_command.count_var_run_reboot_required](https://registry.terraform.io/providers/neuspaces/system/latest/docs/data-sources/command) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_host"></a> [host](#input\_host) | the host to be rebooted (needed for provisioner) | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
