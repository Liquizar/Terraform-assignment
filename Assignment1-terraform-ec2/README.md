# 🚀 Terraform AWS EC2 Instance Deployment

This repository contains a Terraform script to deploy an AWS EC2 instance with various variable types including Number, String, List, Map, and Boolean. The script also demonstrates how to override these variables via the command line.

## ✨ Features

- 🚀 Deploys an AWS EC2 instance.
- ⚙️ Configurable instance type, AMI ID, and region.
- 🔒 Security group with dynamic ingress rules.
- 🏷️ Tags for instances and security groups.
- 📦 Variables defined using different types.
- 🛠️ Override variables via the command line.

## 📑 Table of Contents

- [✨ Features](#-features)
- [📑 Table of Contents](#-table-of-contents)
- [📁 Folder Structure](#-folder-structure)
- [▶️ How to Run](#️-how-to-run)
- [💡 Usage](#-usage)
- [🤝 Contributing](#-contributing)
- [📜 License](#-license)

## 📁 Folder Structure

```
Assignment1-terraform-ec2/
├── main.tf
├── variables.tf
├── terraform.tfvars
├── .gitignore
└── README.md
```

## ▶️ How to Run

### Prerequisites

1. **AWS Account**: Ensure you have access to an AWS account.
2. **Terraform Installed**: Make sure Terraform is installed on your local machine.
3. **AWS CLI Configured**: Ensure the AWS CLI is configured with your credentials (`aws configure`).

### Steps

1. **Clone the Repository**:
    ```bash
    git clone https://github.com/Liquizar/Terraform-assignment.git
    cd Terraform-assignment/Assignment1-terraform-ec2
    ```

2. **Initialize the Project**:
    ```bash
    terraform init
    ```

3. **Apply the Configuration**:
    ```bash
    terraform apply
    ```

4. **Override Variables via Command Line (optional)**:
    ```bash
    terraform apply -var="instance_type=t2.small" -var="aws_region=ap-south-1"
    ```

## 💡 Usage

This project demonstrates how to:

- Define and use various types of variables in Terraform.
- Override variable values using the command line.
- Deploy an AWS EC2 instance with a dynamically created security group.

### Variable Types

- **String**: AWS region, AMI ID, instance type, instance name.
- **List**: Allowed ports for the security group.
- **Map**: Tags for the instance.
- **Boolean**: Flag to create an instance.

## 🤝 Contributing

Contributions are welcome! Please fork this repository and submit pull requests with any improvements or bug fixes.

1. Fork it 
2. Create your feature branch (`git checkout -b feature/new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin feature/new-feature`)
5. Create a new Pull Request

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
```
