GitHub actions badge
  
# Azure DevOps: Building a CI/CD Pipeline

# Overview
This project is intended to be used as a scaffolding to perform both Continuous Integration and Continuous Delivery by using Github actions and Azure pipeline.

# Project Details
[Quarterly Project Plan](./project%20info/Project%20Plan_%20Building%20CI-CD%20Pipeline.xlsx): quarterly and yearly goal with weekly task estimation

[Task Tracking](https://trello.com/b/RV1s9H7y/building-a-ci-cd-pipeline): trello board which shows project progress

Demo: link to the screencast on YouTube
  
# Prerequisites

- An [Azure Account](https://portal.azure.com) 
- A [Github Account](https://github.com)
  
# Architectural Diagram

![Project Architecture](./project%20info/Project%20architecture.png)
  
# Instructions
Screenshots demonstrating key steps
  
## 1. Setup environment
  
## 2. Configure Coninious Integration on Github
  
  2.1 Clone and build an application inside of Azure Cloud Shell.
      Screenshot showing the project cloned into Azure Cloud Shell.

      Screenshot showing the passing tests that are displayed after running the make all command from the Makefile
      ![Test Passed](./project%20info/make_all_pass_test.png)
  
  2.2 Conduct a test run on an application in Azure Cloud Shell.
      Screenshot showing the output of a test run.
  
  
## 3. Configure Continious Delivery on Azure

  3.1 Load test an application using Locust.
      Screenshot of the application running against a load test with locust.
      
  3.2 Deploy an application using Azure Pipelines into Azure App Services.
      Screenshot of Azure Azure App Service
      
      Screenshot of a successful prediction in Azure Cloud Shell
  
  3.3 Test an application inside of Azure Pipelines
      Screenshot of a successful run of the project in Azure Pipelines.
  
# Enhancements
  


