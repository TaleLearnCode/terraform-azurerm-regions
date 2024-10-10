# Example: Default

This module provides Azure region information for a specified Azure region.  This example shows the default way to use the module.

## Example Usage

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

You are specifying these values:

- **azure_region**: The Azure region to get information for.

The value of `region_short_name` in this scenario would be `usnc`.