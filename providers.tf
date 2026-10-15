terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.9.0"
    }
    github = {
      source  = "integrations/github"
      version = "6.13.0"
    }
}
  cloud {
    
    organization = "motoshare"

    workspaces {
      name = "cloud-demo-loni"
    }
}
}

provider "azurerm" {
  features {}

  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}

provider "github" {
  # Configuration options
}

