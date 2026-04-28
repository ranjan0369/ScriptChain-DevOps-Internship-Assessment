
# ScriptChain DevOps Internship Assessment

This repository contains solutions for the ScriptChain DevOps Internship Assessment. The tasks demonstrate practical DevOps skills using AWS CloudFormation, GitLab CI/CD, and AWS Lambda packaging with Python. Each section below describes the approach and provides references to the relevant files in this repository.

## Table of Contents
- [AWS CloudFormation: S3 & EC2 Example](#aws-cloudformation-s3--ec2-example)
- [GitLab CI/CD: Node.js Pipeline](#gitlab-cicd-nodejs-pipeline)
- [Python Lambda Packaging](#python-lambda-packaging)

---

## AWS CloudFormation: S3 & EC2 Example
**Task:** Write an example of AWS CloudFormation YAML template to create an S3 bucket and an EC2 instance.

**Solution:**
The solution is provided in [aws_cloudformation/s3_ec2_template.yml](aws_cloudformation/s3_ec2_template.yml). This template provisions:
- A new VPC, subnet, and security group
- An S3 bucket with versioning and encryption enabled
- An EC2 instance (Amazon Linux 2 AMI) with SSH and HTTP access

**Key Features:**
- Parameterized instance type and key pair
- Public subnet and internet gateway for external access
- Outputs for VPC, subnet, EC2 public IP, and S3 bucket name

Refer to the YAML file for full resource definitions and customization options.

---

## GitLab CI/CD: Node.js Pipeline
**Task:** Write a sample GitLab CI/CD YAML configuration to build, test, and deploy a Node.js application.

**Solution:**
The pipeline configuration is in [gitlab_cicd/.gitlab-cicd.yml](gitlab_cicd/.gitlab-cicd.yml). It covers:
- **Test Stage:** Installs dependencies and runs tests using Mocha
- **Build & Push Stage:** Builds a Docker image, tags it, and pushes to AWS ECR
- **Deploy Stage:** Pulls the image on an EC2 instance and runs the container

**Key Features:**
- Uses Docker-in-Docker for image building
- AWS CLI for ECR authentication and deployment
- SSH-based deployment to EC2

See the YAML file for environment variable requirements and step details.

---

## Python Lambda Packaging
**Task:** Write a sample package configuration in Python to build an AWS Lambda function.

**Solution:**
The [lambda_function](lambda_function/) directory contains:
- `app.py`: Lambda handler using the `requests` library
- `requirements.txt`: Python dependencies
- `package.sh`: Script to build a deployment package (installs dependencies, zips code)
- `create_lambda_func.sh`: Example AWS CLI command to create the Lambda function

**Packaging Steps:**
1. Install dependencies into a `package/` directory
2. Copy application code
3. Zip the contents for AWS Lambda deployment

This approach ensures all dependencies are included for Lambda execution. See the scripts and code for details.

---
