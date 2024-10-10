output "region" {
  description = <<EOD
Azure paired region with the current one. All formats available as attributes.
```
object({
  region (string): Azure paired region in standard format
  region_short (string): Azure paired region in short format for resource naming purpose
  region_cli (string): Azure paired region in CLI name format
  region_identifier (string): Azure paired region in identifier format
})
```
EOD
  value = local.regions[local.region_identifier] == null ? null : {
    region       = try(local.regions[local.region_identifier], null)
    region_short = try(local.short_names[local.region_identifier], null)
    region_cli   = try(local.cli_names[local.region_identifier], null)
    region_identifier  = local.region_identifier
  }
}

output "paired_region" {
  description = <<EOD
Azure paired region with the current one. All formats available as attributes.
```
object({
  region (string): Azure paired region in standard format
  region_short (string): Azure paired region in short format for resource naming purpose
  region_cli (string): Azure paired region in CLI name format
  region_identifier (string): Azure paired region in identifier format
})
```
EOD
  value = local.paired_region == null ? null : {
    region       = try(local.regions[local.paired_region], null)
    region_short = try(local.short_names[local.paired_region], null)
    region_cli   = try(local.cli_names[local.paired_region], null)
    region_identifier  = local.paired_region
  }
}