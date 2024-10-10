# Azure Regions Terraform Module

[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md)

This module provides Azure region information for a specified Azure region. Included in the output is the name, short name, CLI identifier, and resource name region component of the specified region. The output also includes the same information for the region paired with the specified region (for example, if specifying North Central US then the information for South Central US will be included).

## Prerequisites

There are no prerequisites for this project.

## Usage

```hcl
module "azure_regions" {
  source  = "TaleLearnCode/regions/azurerm"
  version = "0.0.1-pre"
	azure_region = "northcentralus"
}
```

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Usage

```hcl
module "azure_region" {
  source  = "talelearncode/regions/azurerm"
  version = "0.0.1"
  azure_region = "northcentralus"
}

output "region_short_name" {
  value = module.azure_region.region.region_short
}
```

For more detailed instructions on using this module: please refer to the appropriate example:

- [Default](examples/default/README.md)

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| azure\_region | The Azure region to get information for. | `string` | n/a | yes |

## Outputs

| Name              | Description                                                |
|-------------------|------------------------------------------------------------|
| region            | Azure region name in standard format.                      |
| region_short      | Azure region in short format for resource naming purposes. |
| region_cli        | Azure region in CLI name format.                           |
| region_identifier | The identifier for the Azure region.                       |
| paired_region     | Azure paired region with the current one. All formats available as attributes. <pre>object({<br>  region (string): Azure paired region in standard format.<br>  region_short (string): Azure paired region in short format for resource naming purposes.<br>  region_cli_(string): Azure paired region in CLI name format. <br>  region_identifier (string): The identifier for the paired Azure region.<br>})</pre> |