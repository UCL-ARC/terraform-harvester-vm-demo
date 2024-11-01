# terraform-harvester-vm-demo

> [!IMPORTANT]
> This repository is still under construction!

A Terraform template for new ARC Terraform projects or modules.
It has a suggested skeleton structure and GitHub Actions workflows.

It will deploy a virtual machine using the Harvester Terraform provider.

This template is suitable for deploying VMs on Condenser.

## Usage

1. Use this template when creating a new repo. If creating a self-contained module,
   name your repo according to the module naming convention of terraform-<PROVIDER>-<NAME>.
2. Change CODEOWNERS to you or your Team.

## Deployment

This module can be deployed as-is.

Create a new file `env.tfvars` with the following contents to configure the variables
for the module:

``` terraform
img_display_name = "almalinux-9.3" # Display name of an image in the harvester-public namespace
prefix           = "terraform-harvester-vm-demo"
namespace        = "my-ns" # A namespace in the cluster
public_key       = "my-key" # Your key in the namespace
network_name     = "my-net" # A network in the namespace; this can also be left empty
```

[Obtain a suitable kubeconfig file](https://docs.harvesterhci.io/v1.3/faq/#how-can-i-access-the-kubeconfig-file-of-the-harvester-cluster)
to access the Harvester cluster. Then you can deploy this module as follows:

``` sh
KUBECONFIG=/path/to/kubeconfig.yaml terraform apply -var-file=env.tfvars
```

And you can destroy the VM like so:

``` sh
KUBECONFIG=/path/to/kubeconfig.yaml terraform apply -destroy -var-file=env.tfvars
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.8.5 |
| <a name="requirement_harvester"></a> [harvester](#requirement\_harvester) | 0.6.4 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.6.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_harvester"></a> [harvester](#provider\_harvester) | 0.6.4 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [harvester_cloudinit_secret.cloud-config](https://registry.terraform.io/providers/harvester/harvester/0.6.4/docs/resources/cloudinit_secret) | resource |
| [harvester_virtualmachine.vm](https://registry.terraform.io/providers/harvester/harvester/0.6.4/docs/resources/virtualmachine) | resource |
| [random_id.secret](https://registry.terraform.io/providers/hashicorp/random/3.6.3/docs/resources/id) | resource |
| [harvester_image.img](https://registry.terraform.io/providers/harvester/harvester/0.6.4/docs/data-sources/image) | data source |
| [harvester_ssh_key.mysshkey](https://registry.terraform.io/providers/harvester/harvester/0.6.4/docs/data-sources/ssh_key) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_img_display_name"></a> [img\_display\_name](#input\_img\_display\_name) | Display name of an image in the harvester-public namespace | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace that the SSH public key and network are already deployed in, and that the VM will be deployed in | `string` | n/a | yes |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | Name of a network in the specified namespace | `string` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Prefix for the VM name | `string` | n/a | yes |
| <a name="input_public_key"></a> [public\_key](#input\_public\_key) | Name of an SSH key in the specified namespace | `string` | n/a | yes |
| <a name="input_vm_count"></a> [vm\_count](#input\_vm\_count) | n/a | `number` | `1` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vm_ids"></a> [vm\_ids](#output\_vm\_ids) | n/a |

---
<!-- END_TF_DOCS -->
