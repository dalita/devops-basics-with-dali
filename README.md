# DevOps Basics with Dali

Learn DevOps by building real projects.

This repository contains all the source code used throughout the **DevOps Basics with Dali** YouTube series, covering Docker, Kubernetes, Terraform, Helm, and AWS through hands-on, production-inspired examples.

Every lesson follows the same workflow:

📖 Official Documentation → 💡 Understand → 🤖 Use AI → ✅ Validate → 🚀 Deploy

---

# Playlists

## Docker for Beginners

- EP01 - Install Docker and Run Your First Container
- EP02 - Your First Dockerfile
- EP03 - Docker Images Explained
- EP04 - Docker Volumes
- EP05 - Docker Networks
- EP06 - Docker Compose
- EP09 - Docker Logs and Debugging

---

## Kubernetes for Beginners

- EP01 - What is Kubernetes?
- EP02 - Kubernetes Architecture
- EP03 - Install Kubernetes Locally
- EP04 - Your First Pod
- EP05 - Deployments and ReplicaSets
- EP06 - Services and Networking
- EP07 - Namespaces and ConfigMaps
- EP08 - Secrets and Environment Variables
- EP09 - Volumes and Persistent Storage
- EP10 - Ingress and Load Balancers
- EP11 - Helm for Beginners
- EP12 - Kubernetes Debugging
- EP13 - Real-World Application on Kubernetes
- EP14 - Kubernetes Best Practices
- EP15 - Convert Our Application into a Helm Chart
- EP16 - Amazon EKS on AWS

---

## Terraform for Beginners

- EP01 - What is Terraform?
- EP02 - Install Terraform
- EP03 - Your First Terraform Project
- EP04 - Resources and Dependencies
- EP05 - Variables & Outputs
- EP06 - Data Sources
- EP07 - Terraform State
- EP08 - Modules
- EP09 - Build an AWS VPC
- EP10 - Launch an EC2 Instance
- EP11 - Deploy an Amazon RDS Database
- EP12 - IAM with Terraform
- EP13 - Amazon EKS with Terraform
- EP14 - CI/CD with Terraform
- EP15 - Students Portal on AWS

---

# Available Hands-On Labs

## Docker

- EP02 - Your First Dockerfile
- EP06 - Docker Compose
- EP09 - Docker Logs and Debugging

## Kubernetes

- EP04 - Your First Pod
- EP05 - Deployments and ReplicaSets
- EP06 - Services and Networking
- EP07 - Namespaces and ConfigMaps
- EP08 - Secrets and Environment Variables
- EP09 - Volumes and Persistent Storage
- EP10 - Ingress and Load Balancers
- EP12 - Kubernetes Debugging
- EP13 - Real-World Application on Kubernetes
- EP14 - Kubernetes Best Practices
- EP15 - Convert Our Application into a Helm Chart
- EP16 - Amazon EKS on AWS

## Terraform

- EP02 - Install Terraform
- EP03 - Your First Terraform Project
- EP04 - Resources and Dependencies
- EP05 - Variables & Outputs

---

# Featured Project

## Students Portal Application

A full-stack application used throughout the Kubernetes and Terraform series.

### Technology Stack

- React
- Node.js
- PostgreSQL
- Docker
- Kubernetes
- Helm
- Terraform
- Amazon EKS
- AWS

### Repository

```text
devops-basics-students-portal
```

---

# Goal

Learn modern DevOps through practical, real-world projects.

This repository follows a complete learning path from Docker fundamentals to Kubernetes, Helm, Terraform, and Amazon EKS, helping you build the skills needed to deploy cloud-native applications in production environments.

---

# YouTube Channel

**DevOps Basics with Dali**

---

# Latest Episode

## EP05 - Variables & Outputs

In this episode, you'll learn how to make your Terraform configurations reusable using Input Variables, tfvars files, and Outputs.

### Topics Covered

- Input Variables
- Variable Types (Introduction)
- Default Values
- variables.tf
- terraform.tfvars
- outputs.tf
- terraform output
- Replace hardcoded values
- Use the official Terraform documentation
- Use AI to generate practical examples
- Deploy reusable infrastructure
- terraform destroy

---

# Previous Episode

## EP04 - Resources and Dependencies

In this episode, you'll learn how Terraform manages relationships between resources using its dependency graph.

### Topics Covered

- Resource Blocks
- Resource Arguments
- Creating Multiple Resources
- Resource References
- Implicit Dependencies
- Explicit Dependencies
- depends_on
- Terraform Dependency Graph
- terraform graph
- Graphviz
- terraform plan
- terraform apply
- Updating Existing Resources
## Commands Used

### Install Graphviz (macOS)
```bash
brew install graphviz
```
### Verify the installation
```bash
dot -V
```
### Generate the Terraform dependency graph
```bash
terraform graph
```
### Export the graph as a PNG image
```bash
terraform graph | dot -Tpng > graph.png
```

### Open the generated image (macOS)
```bash
open graph.png
```
## Official Documentation
- Terraform Graph: https://developer.hashicorp.com/terraform/cli/commands/graph
- Graphviz: https://graphviz.org/
---

# Hands-On Project

Build reusable AWS infrastructure with Terraform.

Throughout this series, you'll progressively build production-style Infrastructure as Code by learning how to:

- Create reusable Terraform configurations
- Separate code from configuration
- Manage multiple environments
- Read existing AWS resources
- Build networking infrastructure
- Deploy EC2 and RDS
- Organize projects using Modules
- Prepare infrastructure for Amazon EKS
- Apply Infrastructure as Code best practices

---

# Repository Structure

```text
docker/
kubernetes/
terraform/
README.md
```
---

# Prerequisites

Before starting this repository, you should be familiar with:

- Basic Linux commands
- Git
- YAML

For the Terraform labs, you'll also need:

- An AWS Account
- AWS CLI

For the Amazon EKS labs, you'll also need:

- kubectl
- eksctl

---

# Who Is This Repository For?

This repository is designed for:

- DevOps Beginners
- Software Engineers
- Cloud Engineers
- Platform Engineers
- System Administrators
- Students preparing for AWS Certifications
- Anyone who prefers learning by building real projects

---

# Learning Methodology

Every lesson follows the same approach:

1. Read the official documentation.
2. Understand the concept.
3. Use AI to accelerate your learning.
4. Validate against the official documentation.
5. Build it yourself.

The goal is to use AI as an assistant—not as a replacement for learning or the official documentation.

---

# Future Content

Future content on the channel will cover real-world DevOps topics, including:

- GitHub Actions
- Jenkins
- Argo CD
- Crossplane
- AWS Networking
- IAM
- Monitoring and Observability
- Production Kubernetes
- AWS Architecture
- DevOps Interview Preparation
- Platform Engineering

---

# License

This repository is intended for educational purposes.

Feel free to fork it, experiment with the labs, and continue learning.

---

# Connect

📺 **YouTube:** DevOps Basics with Dali

If you find these labs helpful, consider ⭐ starring this repository and subscribing to the channel for more hands-on DevOps, Kubernetes, Terraform, AWS, and Cloud Engineering content.