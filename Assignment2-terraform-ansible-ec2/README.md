# 🚀 Terraform and Ansible EC2 Instance Setup 🛠️

This project demonstrates how to use Terraform to create an Ubuntu EC2 instance on AWS, copy an Ansible playbook to it, install Ansible, and run the playbook to configure the instance. 

## Features 🌟

- 🚀 Automated provisioning of an EC2 instance using Terraform.
- 🔒 ️Secure access with SSH key pairs.
- ⚙️ Configuration of an EC2 security group to allow SSH access.
- 🤖 Automatic installation of Ansible on the EC2 instance.
- 🅰️ Deployment and execution of an Ansible playbook to configure the instance with Nginx.

## Table of Contents 📑

1. [✨ Features](#features)
2. [📑 Table of Contents](#table-of-contents)
3. [📁 Folder Structure](#folder-structure)
4. [🛠️ Prerequisites](#prerequisites)
5. [▶️ How to Run](#how-to-run)
6. [💡 Usage](#usage)
7. [🤝 Contributing](#contributing)
8. [📜 License](#license)

## Folder Structure 📁

```plaintext
Assignment2-terraform-ansible-ec2/
├── main.tf
├── variables.tf
├── terraform.tfvars
├── playbook.yml
└── README.md
```

## Prerequisites 🛠️

- Terraform installed on your machine.
- AWS CLI configured with your AWS credentials.
- Ansible installed on your local machine.
- SSH key pair (public and private keys).

## How to Run ▶️

1. **Clone the Repository:**

   ```sh
   git clone https://github.com/Liquizar/Terraform-assignment.git
   cd Terraform-assignment/Assignment2-terraform-ansible-ec2
   ```

2. **Initialize Terraform:**

   ```sh
   terraform init
   ```

3. **Plan the Deployment:**

   ```sh
   terraform plan
   ```

4. **Apply the Deployment:**

   ```sh
   terraform apply
   ```

   - Type `yes` when prompted to confirm the application.

5. **Access the EC2 Instance:**

   - Once the instance is up and running, you can SSH into it using the private key and the public IP address provided by Terraform.

## Usage 🚀

- **Verify Nginx Installation:**

  Open a web browser and navigate to the public IP address of your EC2 instance. You should see a simple HTML page served by Nginx.

- **Inspect the Ansible Playbook:**

  The Ansible playbook (`playbook.yml`) installs Nginx, configures it to start on boot, creates a simple HTML page, and sets up firewall rules using UFW.

## Contributing 🤝

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit your changes (`git commit -m 'Add new feature'`).
5. Push to the branch (`git push origin feature-branch`).
6. Open a Pull Request.

## License 📝

This project is licensed under the MIT License. See the LICENSE file for details.
