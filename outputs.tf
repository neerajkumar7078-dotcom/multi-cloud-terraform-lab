output "aws_vpc_id" {
  description = "ID of the AWS VPC."
  value       = module.aws_network.vpc_id
}

output "aws_subnet_id" {
  description = "ID of the AWS private subnet."
  value       = module.aws_network.subnet_id
}

output "azure_virtual_network_id" {
  description = "ID of the Azure virtual network."
  value       = module.azure_network.virtual_network_id
}

output "azure_subnet_id" {
  description = "ID of the Azure subnet."
  value       = module.azure_network.subnet_id
}

output "google_network_name" {
  description = "Name of the Google Cloud VPC network."
  value       = module.google_network.network_name
}

output "google_subnet_name" {
  description = "Name of the Google Cloud subnet."
  value       = module.google_network.subnet_name
}
