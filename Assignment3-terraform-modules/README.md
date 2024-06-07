# 🚀 Terraform AWS Infrastructure Setup

This project provides a Terraform solution to set up a web server on an EC2 instance within a custom Virtual Private Cloud (VPC) on AWS. It includes both local and remote Terraform modules for creating the necessary AWS infrastructure components.

## ✨ Features

- 🌐 **Custom VPC**: Creates a VPC with multiple subnets and an internet gateway.
- 🔐 **Security Group**: Configures security group rules to allow SSH and HTTP traffic.
- 💻 **EC2 Instance**: Launches an EC2 instance in the public subnet with a web server setup.
- 📤 **Outputs**: Displays the instance's public IP address for easy access.

## 📑 Table of Contents

- [✨ Features](#-features)
- [📑 Table of Contents](#-table-of-contents)
- [📂 Folder Structure](#-folder-structure)
- [🏃‍♂️ How to Run](#-how-to-run)
- [🔧 Usage](#-usage)
- [🤝 Contributing](#-contributing)

## 📂 Folder Structure

```plaintext
.
├── modules
│   ├── vpc
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   └── webserver
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
├── main.tf
├── variables.tf
├── outputs.tf
└── README.md
```

## 🏃‍♂️ How to Run

### Prerequisites

- 🛠️ Terraform installed on your machine. [Install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- 🔧 AWS CLI configured with appropriate credentials. [Configure AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html)

### Steps

1. **Clone the repository**:

   ```bash
   git clone https://github.com/Liquizar/Terraform-assignment.git
   cd Terraform-assignment/Assignment3-terraform-modules
   ```

2. **Initialize Terraform**:

   ```bash
   terraform init
   ```

3. **Apply the Terraform configuration**:

   ```bash
   terraform apply -var 'key_name=YourKeyPairName'
   ```

   Replace `YourKeyPairName` with the name of your AWS key pair.

4. **Confirm the apply step**: Type `yes` when prompted.

5. **View Outputs**: After the apply step is complete, Terraform will display the outputs, including the public IP address of the EC2 instance.

## 🔧 Usage

- 🌍 **Access the Web Server**: Open your browser and navigate to the public IP address displayed in the outputs.
- 🔑 **SSH Access**: Use the key pair specified in the apply step to SSH into the EC2 instance.
  ```bash
  ssh -i /path/to/your-key.pem ubuntu@<public-ip>
  ```

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. **Fork the repository**.
2. **Create a new branch**:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. **Make your changes**.
4. **Commit your changes**:
   ```bash
   git commit -m 'Add some feature'
   ```
5. **Push to the branch**:
   ```bash
   git push origin feature/your-feature-name
   ```
6. **Create a new Pull Request**.

---

🎉 Happy Terraforming!
