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
- EP07 - Expressions & Functions
- EP08 - Terraform State
- EP09 - Build an AWS VPC
- EP10 - Terraform Modules
- EP11 - Production EC2 (User Data, Key Pair, EBS, Tags)
- EP12 - Deploy an Amazon RDS Database
- EP13 - IAM with Terraform
- EP14 - Amazon EKS with Terraform
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
- EP06 - Data Sources
- EP07 - Expressions & Functions
- EP08 - Terraform State

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

## EP08 - Terraform State

In this episode, you'll learn one of the most important concepts in Terraform: the State file.

You'll understand how Terraform keeps track of your infrastructure, how it maps your configuration to real AWS resources, and how to safely manipulate the State using the Terraform CLI.

Through several hands-on demonstrations, you'll import existing AWS resources, rename Terraform resources without recreating infrastructure, remove resources from the State, and understand why Terraform State is the bridge between your code and your cloud infrastructure.

### Topics Covered

- What is Terraform State?
- Understanding terraform.tfstate
- Inspecting the State file
- Drift Detection
- terraform state list
- terraform state show
- terraform state mv
- terraform import
- terraform state rm
- Import existing AWS resources
- Rename Terraform resources safely
- Configuration vs State vs AWS
- Why Terraform wants to recreate infrastructure
- AI-assisted Terraform code review
- Terraform State best practices

### Official Documentation

- Terraform State
- Terraform Import
- Terraform State Commands

---

# Next Episode

## EP09 - Build an AWS VPC

In the next episode, we'll stop relying on the default AWS networking and build a production-style AWS network from scratch using Terraform.

### Topics Covered

- What is a VPC?
- CIDR Blocks
- Public vs Private Subnets
- Internet Gateway
- Route Tables
- Route Table Associations
- Security Groups
- Building a production-style AWS network
- Preparing the networking foundation for future Terraform projects

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
3. Use AI to accelerate the work.
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