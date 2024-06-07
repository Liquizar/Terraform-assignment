# 🌍 Terraform Assignments

This repository contains detailed solutions for various Terraform assignments, each designed to help you learn and practice Terraform through practical examples.

## 📝 Assignment Overview

This repository includes solutions for the following assignments:

1. **Assignment 1**: Working with different types of Terraform variables and overriding them through the command line.
2. **Assignment 2**: Creating an Ubuntu EC2 instance, copying an Ansible playbook, installing Ansible, and running the playbook using Terraform provisioners.
3. **Assignment 3**: Creating and using local and remote Terraform modules to set up a web server and a VPC.
4. **Assignment 4**: Creating a Hello World Terraform configuration file and validating it using Visual Studio Code, Terraform Validate, and ADO Pipeline.
5. **Assignment 5**: Creating various Terraform modules for Azure resources including Resource Group, Virtual Machine, IP Address, NSG, NIC, and Diagnostics Service.

## 📚 Table of Contents

1. [📝 Assignment Overview](#-assignment-overview)
2. [📚 Table of Contents](#-table-of-contents)
3. [📂 Assignments](#-assignments)
   - [1️⃣ Assignment 1](#1️⃣-assignment-1)
   - [2️⃣ Assignment 2](#2️⃣-assignment-2)
   - [3️⃣ Assignment 3](#3️⃣-assignment-3)
   - [4️⃣ Assignment 4](#4️⃣-assignment-4)
   - [5️⃣ Assignment 5](#5️⃣-assignment-5)
4. [🚀 How to Run](#-how-to-run)
5. [⚙️ Usage](#-usage)
6. [🤝 Contributing](#-contributing)

## 📂 Assignments

### 1️⃣ Assignment 1

**Objective**: Write a Terraform script using AWS EC2 instance and GitHub, applying various types of variables.

- **Types of Terraform Variables**:
  - 🔢 Number
  - 📝 String
  - 📋 List
  - 🗺️ Map
  - 🔘 Boolean
- **Variable Declarations**:
  - 📄 In Terraform file
  - 💻 Override through Command Line

### 2️⃣ Assignment 2

**Objective**: Write a Terraform script that creates an Ubuntu EC2 instance, copies an Ansible playbook, installs Ansible, and runs it.

- **Steps**:
  - 🖥️ Create EC2 instance with key and group.
  - 📁 Copy the playbook using the file Terraform provisioner.
  - ⚙️ Install Ansible using remote Terraform provisioner.
  - ▶️ Run Ansible playbook command using remote Terraform provisioner.

### 3️⃣ Assignment 3

**Objective**: Write two modules in Terraform: one local module to set up a web server, and one remote module to set up a VPC.

- **Modules**:
  - 🌐 Local Module: Ubuntu – Setup a webserver
  - 🏞️ Remote Module: Setup VPC

### 4️⃣ Assignment 4

**Objective**: Create a Hello World Terraform configuration file and validate it using various methods.

- **Steps**:
  - 📝 Create a Hello World Terraform configuration file that outputs "Hello World" when submitted.
  - 🔍 Validate the configuration file content in Visual Studio Code.
  - ✅ Validate the configuration file using Terraform Validate and ADO Pipeline.

### 5️⃣ Assignment 5

**Objective**: Create various Terraform modules for Azure resources.

- **Modules**:
  - 📦 Resource Group
  - 💻 Virtual Machine
  - 🌐 IP Address
  - 🔒 NSG
  - 🔗 NIC
  - 📊 Diagnostics Service

## 🚀 How to Run

To run these assignments, follow these steps:

1. 📥 Clone the repository:
   ```bash
   git clone https://github.com/Liquizar/Terraform-assignment.git
   cd Terraform-assignment
   ```

2. 📂 Navigate to the assignment folder you want to run:
   ```bash
   cd Assignment-<number>
   ```

3. 🔧 Initialize Terraform:
   ```bash
   terraform init
   ```

4. ▶️ Apply the Terraform configuration:
   ```bash
   terraform apply
   ```

## ⚙️ Usage

- Customize the variables as needed in the `variables.tf` file or override them through the command line.
- Refer to the respective assignment folders for detailed instructions and configurations.
- Each assignment folder contains a `README.md` file with specific details and steps.

## 🤝 Contributing

We welcome contributions to improve the solutions or add new assignments. To contribute:

1. 🍴 Fork the repository.
2. 🌿 Create a new branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. 💻 Make your changes and commit them:
   ```bash
   git commit -m "Add your commit message"
   ```
4. 🔄 Push to the branch:
   ```bash
   git push origin feature/your-feature-name
   ```
5. 📜 Create a pull request describing your changes.

Thank you for your contributions and for using this repository to learn Terraform! 🌟

