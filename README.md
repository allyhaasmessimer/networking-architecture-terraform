# Networking Architecture with Terraform

This project demonstrates the creation and management of a networking architecture using Terraform on AWS. It includes setting up a Virtual Private Cloud (VPC), subnets, internet gateway, route tables, and security groups.

## Table of Contents

-   [Introduction](#introduction)
-   [Prerequisites](#prerequisites)
-   [Project Structure](#project-structure)
-   [Setup and Usage](#setup-and-usage)
-   [Modules](#modules)
-   [Contributing](#contributing)

## Introduction

The purpose of this project is to showcase how to automate the deployment of a network architecture on AWS using Terraform. This setup includes a VPC with public and private subnets, an internet gateway, route tables, and security groups. The architecture is designed to be modular, making it easy to extend and customize.

## Prerequisites

Before you begin, ensure you have the following installed on your local machine:

-   [Terraform](https://www.terraform.io/downloads.html) (v0.12 or later)
-   [AWS CLI](https://aws.amazon.com/cli/) (configured with your AWS credentials)
-   [Git](https://git-scm.com/downloads)

## Project Structure

networking-architecture-terraform/
├── main.tf
├── variables.tf
├── .gitignore
├── README.md
└── modules/
├── vpc/
│ └── main.tf
| └── outputs.tf
├── subnets/
│ └── main.tf
| └── outputs.tf
| └── variables.tf
├── internet_gateway/
│ └── main.tf
| └── outputs.tf
| └── variables.tf
├── route_tables/
│ └── main.tf
| └── outputs.tf
| └── variables.tf
├── route_table_associations/
│ └── main.tf
| └── variables.tf
└── security_groups/
│ └── main.tf
| └── variables.tf

## Setup and Usage

Follow these steps to set up and use the project:

### Step 1: Clone the Repository

```sh
git clone https://github.com/allyhaasmessimer/networking-architecture-terraform.git
cd networking-architecture-terraform
```

### Step 2: Configure AWS CLI

If you haven't already configured your AWS CLI, run the following command and enter your credentials:

```sh
aws configure
```

### Step 3: Initialize Terraform

Initialize the Terraform working directory:

```sh
terraform init
```

### Step 4: Plan the Infrastructure

Generate an execution plan:

```sh
terraform plan
```

### Step 5: Apply the Infrastructure

Apply the Terraform configuration to create the resources:

```sh
terraform apply
```

### Step 6: Verify the Setup

You can verify the setup by checking the AWS Management Console to ensure that the VPC, subnets, internet gateway, route tables, and security groups have been created.

## Modules

This project is divided into several modules to manage different aspects of the network architecture:

-   VPC: Manages the creation of the Virtual Private Cloud.
-   Subnets: Manages the creation of public and private subnets.
-   Internet Gateway: Manages the creation of the internet gateway.
-   Route Tables: Manages the creation of route tables and their associations.
-   Security Groups: Manages the creation of security groups to control inbound and outbound traffic.

## Contributing

Contributions are welcome! Please fork the repository and use a feature branch. Pull requests are reviewed on a regular basis.
