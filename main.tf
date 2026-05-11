# resource "azurerm_resource_group" "rg" {
#   for_each = var.rgdetails1
  
#   name     = each.key
#   location = each.value
# }

resource "azurerm_resource_group" "rg" {
  for_each = var.rgdetails1
  
  name     = each.value.name
  location = each.value.location
  
}

resource "azurerm_storage_account" "stg" {
    for_each = var.stgname
    depends_on = [ var.rgdetails1 ]
  name                     = each.value.name

  resource_group_name      = each.value.rgname  
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}