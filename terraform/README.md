# Peter's ShopSphere — AWS Container Deployment

A containerized e-commerce website deployed to AWS using Docker, Terraform, Amazon ECR, Amazon ECS with AWS Fargate, and an Application Load Balancer.

## Project Overview

Peter's ShopSphere is a demonstration project that takes a locally developed e-commerce website and prepares it for deployment to the AWS cloud.

The project combines containerization and Infrastructure as Code (IaC) to provision cloud resources and run the application using managed container services.

## Architecture

The deployment is designed around the following workflow:

1. **Docker** packages the website and Nginx web server into a container image.
2. **Amazon ECR** stores the container image.
3. **Terraform** provisions the AWS infrastructure.
4. **Amazon VPC** provides the network, public subnets, and Internet Gateway.
5. **Amazon ECS with AWS Fargate** runs the application container.
6. **Application Load Balancer** receives HTTP traffic and routes it to registered application tasks.
7. **Amazon CloudWatch** collects application logs.

## Technologies Used

* Docker
* Terraform
* AWS CLI
* Amazon ECR
* Amazon ECS
* AWS Fargate
* Amazon VPC
* Application Load Balancer
* AWS IAM
* Amazon CloudWatch
* Nginx
* HTML and CSS

## Repository Structure

```text
shopsphere-container-project/
├── README.md
├── .gitignore
├── Dockerfile
├── index.html
└── terraform/
    ├── main.tf
    ├── variables.tf
    ├── outputs.tf
    └── terraform.tfvars
```

## Run Locally with Docker

Build the Docker image from the project root:

```bash
docker build -t shopsphere-web:v2 .
```

Run the container:

```bash
docker run -d -p 8083:80 --name shopsphere-container shopsphere-web:v2
```

Open the website in your browser:

```text
http://localhost:8083
```

## Deploy Infrastructure with Terraform

Navigate to the Terraform directory:

```bash
cd terraform
```

Initialize Terraform:

```bash
terraform init
```

Validate the configuration:

```bash
terraform validate
```

Preview the infrastructure changes:

```bash
terraform plan
```

Review the plan before applying any changes:

```bash
terraform apply
```

Terraform provisions the AWS resources defined in the configuration. AWS credentials must be configured securely, and the deploying identity must have the required permissions.

## Monitoring and Verification

The deployment can be verified by checking:

* ECS service deployment status and running tasks.
* Application Load Balancer state and DNS endpoint.
* Target group health checks.
* CloudWatch application logs.
* The ShopSphere website through the load balancer endpoint.

## Security Considerations

* ECS tasks accept inbound application traffic only from the Application Load Balancer security group.
* AWS credentials and secret access keys must never be committed to GitHub.
* Terraform state files and local Terraform working directories should be excluded from version control.
* This demonstration uses HTTP and public subnets. HTTPS and private-subnet deployment would be appropriate improvements for a production-oriented design.

## Project Walkthrough

Video demonstration: [Add your Loom video link here]

## Author

Peter Ozuo Chidubem

Cloud Engineering | AWS | Docker | Terraform

GitHub: https://github.com/peterozuo

LinkedIn: https://www.linkedin.com/in/peter-ozuo-473031414
