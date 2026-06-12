resource "azurerm_public_ip" "pip" {
  name                = "assignment-pip"
  location            = "centralindia"
  resource_group_name = "balarg"
  allocation_method   = "Static"
  sku                 = "Standard" 
}