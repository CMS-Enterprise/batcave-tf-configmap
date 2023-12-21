# batcave-tf-configmap

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_config_map.configmap](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/config_map) | resource |
| [aws_eks_cluster_auth.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster_auth) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_certificate_authority_data"></a> [cluster\_certificate\_authority\_data](#input\_cluster\_certificate\_authority\_data) | n/a | `any` | n/a | yes |
| <a name="input_cluster_endpoint"></a> [cluster\_endpoint](#input\_cluster\_endpoint) | n/a | `any` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | n/a | `any` | n/a | yes |
| <a name="input_configmap_data"></a> [configmap\_data](#input\_configmap\_data) | The data injected into the configmap | `map(any)` | `{}` | no |
| <a name="input_configmap_labels"></a> [configmap\_labels](#input\_configmap\_labels) | n/a | `map(any)` | `{}` | no |
| <a name="input_configmap_name"></a> [configmap\_name](#input\_configmap\_name) | n/a | `string` | `"terragrunt-vars"` | no |
| <a name="input_configmap_namespace"></a> [configmap\_namespace](#input\_configmap\_namespace) | n/a | `string` | `"batcave"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
