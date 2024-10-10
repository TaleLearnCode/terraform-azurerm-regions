module "azure_region" {
  source  = "talelearncode/regions/azurerm"
  version = "0.0.1"
  azure_region = "northcentralus"
}

output "region_short_name" {
  value = module.azure_region.region.region_short
}