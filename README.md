# Three-Tier Cloud Infrastructure Design with AWS

## Introduction

A three-tier architecture is a software architecture pattern where the application is divided into three logical tiers: the presentation layer, the business logic layer, and the data storage layer. Each tier performs a specific task and can be managed independently. In this markdown, we'll outline the steps to design and build a three-tier cloud infrastructure using AWS services.

## Architecture Overview

The three tiers in our architecture include:
1. Presentation Layer (Frontend)
2. Business Logic Layer (Backend)
3. Data Storage Layer (Database)

## AWS Services Used

We shall be using the following AWS services to implement our architecture:
- Elastic Compute Cloud (EC2)
- Virtual Private Cloud (VPC)
- Elastic Load Balancer (ELB)
- Security Groups
- Internet Gateway

## Project Overview

### Step 1: Create VPC
- Create our own VPC for the project with a specified CIDR Range.

### Step 2: Set Internet Gateway
- Attach an Internet Gateway to the VPC to enable internet connectivity.

### Step 3: Create Subnets
- Create three subnets: one public and two private subnets. 
  - Public subnet: For resources that need to be accessible from the internet.
  - Private subnets: For resources that should not be directly accessible from the internet.

### Step 4: Configure Route Tables
- Set up route tables with appropriate table associations to route traffic between subnets and the internet gateway.

### Step 5: Create NAT Gateway
- Establish a NAT Gateway to allow private instances to access the internet through the public subnet.

### Step 6: Setup RDS Database
- Create an Amazon RDS instance to store application data securely.

## Conclusion

By following these steps and utilizing AWS services effectively, we can design and deploy a scalable and reliable three-tier cloud infrastructure for our application.


