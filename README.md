
[![Terraform Validation](https://github.com/HappyPathway/terraform-url-downloader/actions/workflows/terraform.yaml/badge.svg)](https://github.com/HappyPathway/terraform-url-downloader/actions/workflows/terraform.yaml)

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_external"></a> [external](#provider\_external) | 2.2.3 |
| <a name="provider_local"></a> [local](#provider\_local) | 2.3.0 |
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [null_resource.cleanup](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [external_external.download](https://registry.terraform.io/providers/hashicorp/external/latest/docs/data-sources/external) | data source |
| [local_file.file](https://registry.terraform.io/providers/hashicorp/local/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cleanup"></a> [cleanup](#input\_cleanup) | n/a | `bool` | `true` | no |
| <a name="input_output_path"></a> [output\_path](#input\_output\_path) | n/a | `any` | `null` | no |
| <a name="input_url"></a> [url](#input\_url) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_file_path"></a> [file\_path](#output\_file\_path) | n/a |
<!-- END_TF_DOCS -->