
resource "azurerm_network_interface" "nic" {
  name                = "assignment-nic"
  location            = "centralindia"
  resource_group_name = "balarg"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = "/subscriptions/02283b5e-576b-409e-893d-ebfd05a14a1f/resourceGroups/balarg/providers/Microsoft.Network/virtualNetworks/balavnet/subnets/subnet11" 
    # Tip: Aap chahein toh direct subnet name se bhi reference kar sakte hain agar same file ho, 
    # Par alag folder me hume hardcoded values ya data source chahiye hota hai. Simplified rakhne ke liye static link:
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = "/subscriptions/02283b5e-576b-409e-893d-ebfd05a14a1f/resourceGroups/balarg/providers/Microsoft.Network/publicIPAddresses/assignment-pip"
  }
}