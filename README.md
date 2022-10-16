# Advanced Terraform Course in Azure

Azure Storage Account provides a default Encryption at Rest means that the data stored in Azure Blob is encrypted before being persisted.

Terraform will retrieve the state from the Azure Storage backend and store it in local memory.

A state is never written to your local disk.

Network Security Group

It can be used to filter network traffic to and from resources in the virtual network.

A nsg contains security rules that allow or deny inbound or outbound network traffic.

In each network security rule, you can specify the source, destination, port and protocol.


## Using Azure Storage for Terraform state
- [x] It's a best practice to store your state in remote storage like Azure Storage.
- [x] After deploying your Azure Storage resources, the backend configurations needs to be added to your code to be able to use Azure Storage as your remote state storage.
- [x] Encryption at rest means your state is never written to your local disk.


## Configure a Virtual Network

- [x] You must start with a resource group.
- [x] Your resource group and virtual network will be the foundation that you will build your infrastructure on.
- [x] Adding tags will help you keep resources together.

## Configure a Subnet
- [x] Subnets provide full control over managing the integration of Azure servers into the virtual network.
- [x] You can add multiple subnets to your virtual network resource block in their own resource block.
- [x] The address_prefix argument is the most commonly used optional argument.


## Configure a Load Balancer

- [x] The load balancer is the single point of contact for clients.
- [x] It will evenly distribute inbound flows that arrive at the front-end address to the backend pool instances.
- [x] A public load balancer provides outbound connections for VMs inside your VNet and private load balancers are used where private IPs are needed at the front end only.


## Create Security Groups

- [x] Network security groups can be used to filter network traffic to and from resources in the virtual network.

- [x] A network security group contains security rules that allow or deny inbound or outbound network traffic.