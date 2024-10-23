# terraform-harvester-vm-demo

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_harvester"></a> [harvester](#requirement\_harvester) | 0.6.4 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.6.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_harvester"></a> [harvester](#provider\_harvester) | 0.6.4 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [harvester_cloudinit_secret.cloud-config](https://registry.terraform.io/providers/harvester/harvester/0.6.4/docs/resources/cloudinit_secret) | resource |
| [harvester_virtualmachine.vm](https://registry.terraform.io/providers/harvester/harvester/0.6.4/docs/resources/virtualmachine) | resource |
| [random_id.secret](https://registry.terraform.io/providers/hashicorp/random/3.6.2/docs/resources/id) | resource |
| [harvester_image.img](https://registry.terraform.io/providers/harvester/harvester/0.6.4/docs/data-sources/image) | data source |
| [harvester_ssh_key.mysshkey](https://registry.terraform.io/providers/harvester/harvester/0.6.4/docs/data-sources/ssh_key) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_img_display_name"></a> [img\_display\_name](#input\_img\_display\_name) | n/a | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | n/a | `string` | n/a | yes |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | n/a | `string` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | n/a | `string` | n/a | yes |
| <a name="input_public_key"></a> [public\_key](#input\_public\_key) | n/a | `string` | n/a | yes |
| <a name="input_vm_count"></a> [vm\_count](#input\_vm\_count) | n/a | `number` | `1` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vm_ids"></a> [vm\_ids](#output\_vm\_ids) | n/a |

---
<!-- END_TF_DOCS -->
