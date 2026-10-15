resource "azurerm_resource_group" "example" {
  name     = var.myname
  location = "Japan East"

  tags = {
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}

output "resource_group_name" {
  value = azurerm_resource_group.example.name
}

output "resource_group_id" {
  value = azurerm_resource_group.example.id
}
