# Full-Stack Cloud Application with Terraform and GitHub Actions

This repository contains the source code and infrastructure as code for a simple web service written in Go, which is containerized using Docker, automatically tested and deployed using GitHub Actions, and managed with Terraform for robust infrastructure provisioning.

## Components

### 1. Golang Web Service

The Go application provides a basic HTTP server returning "Hello, World!" and includes health check and Prometheus metrics endpoints:

- **Main Features**:
  - Hello World endpoint (`/`)
  - Health Check endpoint (`/healthz`)
  - Prometheus metrics endpoint (`/metrics`)

### 2. Docker Configuration

The application is packaged into a lightweight Docker container:

- **Dockerfile**:
  - Uses `golang:1.22-alpine` as a build environment.
  - Builds a static Go binary.
  - Final image based on `alpine:latest` for minimal size.

### 3. GitHub Actions CI/CD Pipeline

Automates testing, building, and deployment processes:

- **CI Workflow Steps**:
  - Setup Go environment.
  - Install dependencies and run tests.
  - Build the Docker image and push it to AWS ECR.
  - Deploy using Terraform to provision AWS resources.

### 4. Terraform Infrastructure Management

Manages cloud resources through Infrastructure as Code (IaC):

- **Managed Resources**:
  - AWS VPC, Subnets, and Security Groups.
  - AWS EKS Cluster and Node Groups.
  - AWS ECR for Docker image storage.

## Getting Started

### Prerequisites

- Docker
- Go (1.22 or higher)
- Terraform (1.1.0 or higher)
- AWS CLI configured with credentials

### Running Locally

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/repository-name.git
   cd repository-name
   ```
   
2. **Build the Docker image**:
   ```bash
   docker build -t hello-world-go .
   ```

3. **Run the Docker container**:
   ```bash
   docker run -p 8080:8080 hello-world-go
   ```

### Deploying

1. **Initialize Terraform**:
   ```bash
   cd terraform
   terraform init
   ```

2. **Apply Terraform configuration**:
   ```bash
   terraform apply
   ```

## Testing

Run the automated tests by executing:

```bash
go test ./...
```

