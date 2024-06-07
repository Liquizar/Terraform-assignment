# 🚀 Terraform Azure Infrastructure Modules

This repository contains a set of Terraform modules for managing Azure resources, including a Resource Group, Virtual Machine, IP Address, Network Security Group (NSG), Network Interface Card (NIC), and Diagnostics Service.

## ✨ Features

- **🔌 Modular Design**: Each resource is managed by a separate Terraform module, allowing for easy reuse and maintenance.
- **📈 Scalability**: Easily scale and replicate infrastructure by reusing modules.
- **⚙️ Customizable**: Variables allow you to customize the deployment according to your needs.
- **🔐 Best Practices**: Follows Terraform and Azure best practices for infrastructure as code.

## 📑 Table of Contents

1. [✨ Features](#-features)
2. [📑 Table of Contents](#-table-of-contents)
3. [📁 Folder Structure](#-folder-structure)
4. [🏃‍♂️ How to Run](#-how-to-run)
5. [🛠️ Usage](#-usage)
6. [🤝 Contributing](#-contributing)
7. [📜 License](#-license)

## 📁 Folder Structure

```
Assignment5-azure-infra/
├── main.tf
├── variables.tf
├── outputs.tf
├── modules/
│   ├── resource_group/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── virtual_machine/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── ip_address/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── nsg/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── nic/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   └── diagnostics/
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
```

## 🏃‍♂️ How to Run

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/Liquizar/Terraform-assignment.git
   cd Terraform-assignment/Assignment5-azure-infra
   ```

2. **Initialize Terraform**:

   ```bash
   terraform init
   ```

3. **Plan the Configuration**:

   ```bash
   terraform plan -var 'resource_group_name=<ResourceGroup>' \
                  -var 'prefix=<Prefix>' \
                  -var 'admin_username=<adminUser>' \
                  -var 'admin_password=<Password>' \
                  -var 'subnet_id=/subscriptions/<subscription_id>/resourceGroups/<resource_group>/providers/Microsoft.Network/virtualNetworks/<vnet_name>/subnets/<subnet_name>' \
                  -var 'log_analytics_workspace_id=/subscriptions/<subscription_id>/resourceGroups/<resource_group>/providers/Microsoft.OperationalInsights/workspaces/<workspace_name>'
   ```

4. **Apply the Configuration**:
   ```bash
   terraform apply -var 'resource_group_name=<ResourceGroup>' \
                   -var 'prefix=<Prefix>' \
                   -var 'admin_username=<adminUser>' \
                   -var 'admin_password=<Password>' \
                   -var 'subnet_id=/subscriptions/<subscription_id>/resourceGroups/<resource_group>/providers/Microsoft.Network/virtualNetworks/<vnet_name>/subnets/<subnet_name>' \
                   -var 'log_analytics_workspace_id=/subscriptions/<subscription_id>/resourceGroups/<resource_group>/providers/Microsoft.OperationalInsights/workspaces/<workspace_name>'
   ```

Replace the variable values with your actual configuration details.

## 🛠️ Usage

- **Resource Group**: Manages an Azure Resource Group.
- **Virtual Machine**: Manages a Virtual Machine with customizable size and OS.
- **IP Address**: Manages a Public IP Address.
- **NSG**: Manages a Network Security Group with predefined security rules.
- **NIC**: Manages a Network Interface Card linked to a subnet and Public IP.
- **Diagnostics**: Configures diagnostic settings for monitoring.

## 🤝 Contributing

We welcome contributions! Please follow these steps to contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Make your changes.
4. Commit your changes (`git commit -m 'Add some feature'`).
5. Push to the branch (`git push origin feature/your-feature`).
6. Open a pull request.

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
