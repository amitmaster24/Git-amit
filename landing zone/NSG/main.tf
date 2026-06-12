
resource "azurerm_network_security_group" "nsg" {
  name                = "bala-nsg"
  location            = "centralindia"
  resource_group_name = "balarg"

  security_rule {
    name                       = "allow-ssh"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}