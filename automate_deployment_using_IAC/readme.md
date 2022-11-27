# Automating deployment using Infrastructure as Code - Terraform


1. Set up a provider in provider.tf file

2. __Configure mynetwork with file-> mynetwork.tf__

* By definition, an auto mode network automatically creates a subnetwork in each 
  region. Therefore, you are setting auto_create_subnetworks to true.

```tf
# Create the mynetwork network
resource "google_compute_network" "mynetwork" {
  name = "mynetwork"

# RESOURCE properties go here
  auto_create_subnetworks = "true"
}
```

3. Configure the firewall rule:

* Define a firewall rule to allow HTTP, SSH, RDP, and ICMP traffic on mynetwork.

