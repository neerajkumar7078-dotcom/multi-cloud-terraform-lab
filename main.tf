module "aws_network" {
  source = "./modules/aws-network"

  name        = var.name
  vpc_cidr    = var.aws_vpc_cidr
  subnet_cidr = var.aws_subnet_cidr
  tags        = var.tags
}

module "azure_network" {
  source = "./modules/azure-network"

  name        = var.name
  location    = var.azure_location
  vnet_cidr   = var.azure_vnet_cidr
  subnet_cidr = var.azure_subnet_cidr
  tags        = var.tags
}

module "google_network" {
  source = "./modules/google-network"

  name         = var.name
  region       = var.google_region
  network_cidr = var.google_subnet_cidr
}
