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



4. Configure the VM instance:


* Define the VM instances by creating a VM instance module. 
* A module is a reusable configuration inside a folder. You can use this module for both VM instances

5. Create mynetwork and its resources

* To rewrite the Terraform configuration files to a canonical format and style, run the following command:

> terraform fmt

* To initialize Terraform, run the following command:

> terraform init

* To create an execution plan, run the following command:

> terraform plan

* Terraform determined that the following 4 resources need to be added:

Name	Description
mynetwork	VPC network
mynetwork-allow-http-ssh-rdp-icmp	Firewall rule to allow HTTP, SSH, RDP and ICMP
mynet-us-vm	VM instance in us-central1-c
mynet-eu-vm	VM instance in "europe-west1-d"

* To apply the desired changes, run the following command:

> terraform apply

