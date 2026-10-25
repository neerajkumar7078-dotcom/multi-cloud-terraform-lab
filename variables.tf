variable "name" {
  description = "Short name used to identify the lab resources."
  type        = string
  default     = "cloud-network-lab"
}

variable "aws_region" {
  description = "AWS region in which to create the VPC."
  type        = string
  default     = "us-east-1"
}

variable "aws_vpc_cidr" {
  description = "IPv4 range for the AWS VPC."
  type        = string
  default     = "10.10.0.0/16"
}

variable "aws_subnet_cidr" {
  description = "IPv4 range for the AWS private subnet."
  type        = string
  default     = "10.10.1.0/24"
}

variable "azure_subscription_id" {
  description = "Azure subscription ID. Use a local tfvars file or environment variable; never commit secrets."
  type        = string
  sensitive   = true
}

variable "azure_location" {
  description = "Azure region for the resource group and VNet."
  type        = string
  default     = "East US"
}

variable "azure_vnet_cidr" {
  description = "IPv4 range for the Azure VNet."
  type        = string
  default     = "10.20.0.0/16"
}

variable "azure_subnet_cidr" {
  description = "IPv4 range for the Azure subnet."
  type        = string
  default     = "10.20.1.0/24"
}

variable "google_project_id" {
  description = "Google Cloud project ID to use for the lab."
  type        = string
}

variable "google_region" {
  description = "Google Cloud region for the subnet."
  type        = string
  default     = "us-central1"
}

variable "google_subnet_cidr" {
  description = "IPv4 range for the Google Cloud subnet."
  type        = string
  default     = "10.30.1.0/24"
}

variable "tags" {
  description = "Common AWS and Azure tags."
  type        = map(string)
  default = {
    purpose    = "learning"
    managed-by = "terraform"
  }
}
