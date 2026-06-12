
resource "azurerm_linux_virtual_machine" "vm" {
  name                = "assignment-vm"
  resource_group_name = "balarg"
  location            = "centralindia"
  size = "Standard_D2s_v3" # Sasta size testing ke liye
  admin_username      = "adminuser"
  admin_password      = "Password1234!" # Hardcoded password (Sirf assignment ke liye)
  disable_password_authentication = false

  network_interface_ids = [
    "/subscriptions/02283b5e-576b-409e-893d-ebfd05a14a1f/resourceGroups/balarg/providers/Microsoft.Network/networkInterfaces/assignment-nic"
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}