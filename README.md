# Azure Three-Tier Network Infrastructure with Terraform

## Overview
This project implements a production-ready three-tier network architecture in Azure using Terraform. It creates a secure networking foundation with separate subnets for web, application, and database tiers, complete with network security groups and proper network isolation.

## Architecture

### Key Components
- Virtual Network with dedicated address space
- Three isolated subnet tiers (web, app, database)
- Network Security Groups with tier-specific rules
- Route tables for network traffic control
- Azure Storage for Terraform state management

## Prerequisites
- Azure CLI (latest version)
- Terraform (>= 1.0.0)
- Azure subscription with Owner/Contributor access
- Storage account for Terraform state (instructions below)

## Quick Start

### 1. Configure Azure Storage for Terraform State
```bash
# Login to Azure
az login

# Create resource group for Terraform state
az group create --name terraform-state-rg --location eastus

# Create storage account
az storage account create \
  --name tfstate123456 \
  --resource-group terraform-state-rg \
  --location eastus \
  --sku Standard_LRS

# Create container
az storage container create \
  --name tfstate \
  --account-name tfstate123456
```

### 2. Clone and Initialize
```bash
# Clone repository
git clone https://github.com/yourusername/azure-three-tier-network.git
cd azure-three-tier-network

# Initialize Terraform
terraform init
```

### 3. Configure Variables
Create a `terraform.tfvars` file:
```hcl
company_name  = "yourcompany"
project_name  = "yourproject"
environment   = "prod"
location      = "eastus"
address_space = "10.0.0.0/16"
```

### 4. Deploy Infrastructure
```bash
# Review changes
terraform plan

# Apply changes
terraform apply
```

## Project Structure
```
├── README.md
├── docs/
│   └── architecture.png
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
├── locals.tf
└── terraform.tfvars.example
```

## Network Configuration
- **VNet Address Space:** 10.0.0.0/16
- **Web Subnet:** 10.0.1.0/24
- **App Subnet:** 10.0.2.0/24
- **DB Subnet:** 10.0.3.0/24

### Security Groups
#### Web Tier NSG
- Allow HTTP (80) from Internet
- Allow HTTPS (443) from Internet

#### App Tier NSG
- Allow 8080 from Web Subnet only

#### DB Tier NSG
- Allow 1433 from App Subnet only

## State Management
- **Backend:** Azure Storage
- **State file:** Encrypted at rest
- **State locking:** Enabled

## Contributing
1. Fork the repository
2. Create a feature branch
3. Commit changes
4. Create a Pull Request

## Security Considerations
- All subnets are isolated with NSGs
- No direct database access from web tier
- Restricted port access based on tier
- Service endpoints enabled for Azure services

## License
MIT License - See LICENSE file for details
