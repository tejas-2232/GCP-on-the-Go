# create a vpc network in gcp

resource "google_compute_network" "mynetwork" {
    name= "mynetwork"

    auto_create_subnetworks = true
}

# Add a firewall rule to allow HTTP, SSH, RDP and ICMP traffic on mynetwork
resource "google_compute_firewall" "mynetwork-allow-http-ssh-rdp-icmp" {
name = "mynetwork-allow-http-ssh-rdp-icmp"
# RESOURCE properties go here

network = google_compute_network.mynetwork.self_link
}

# Note: Because this firewall rule depends on its network, you are using the 
# google_compute_network.mynetwork.self_link reference to instruct Terraform to resolve 
# these resources in a dependent order. In this case, the network is created before the firewall rule.

allow {
    protocol = "tcp"
    ports = ["22", "80", "3389"]
}
allow {
    protocol = "icmp"
}
source_ranges = ["0.0.0.0/0"]

# The list of allow rules specifies which protocols and ports are permitted.


# Create the mynet-us-vm instance
module "mynet-us-vm" {
  source           = "./instance"
  instance_name    = "mynet-us-vm"
  instance_zone    = "us-central1-c"
  instance_network = google_compute_network.mynetwork.self_link
}
# Create the mynet-eu-vm" instance
module "mynet-eu-vm" {
  source           = "./instance"
  instance_name    = "mynet-eu-vm"
  instance_zone    = "europe-west1-d"
  instance_network = google_compute_network.mynetwork.self_link
}

# These resources are leveraging the module in the instance folder and provide the name, 
# zone, and network as inputs. Because these instances depend on a VPC network, you are using the 
# google_compute_network.mynetwork.self_link reference to instruct Terraform to resolve these resources in a 
# dependent order. In this case, the network is created before the instance