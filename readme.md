# Terraform Modules

Reusable Terraform modules for deploying applications across environments.

## Features

- Modular and reusable code.
- Multi-cloud support.
- CI/CD integration.
- Environment configurability.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html).
- Cloud provider access and credentials.

## Usage

1. Clone the repository:
    ```bash
    git clone https://github.com/DevOpsNinja-sg/terraform-aws-multienv.git
    cd terraform-aws-multienv
    ```

2. Configure variables in `variables.tf` or `terraform.tfvars`.

3. Initialize and deploy:
    ```bash
    terraform init
    terraform apply
    ```

## Directory Structure

```
terraform-modules-app/
├── modules/
├── examples/
└── README.md
```

