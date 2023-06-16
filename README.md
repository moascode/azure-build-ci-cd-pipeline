[![Python application test with Github Actions](https://github.com/moascode/azure-build-ci-cd-pipeline/actions/workflows/pythonapp.yml/badge.svg)](https://github.com/moascode/azure-build-ci-cd-pipeline/actions/workflows/pythonapp.yml)
  
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
  
## 1. Setup development environment

#### 1.1 Clone and build the application inside of Azure Cloud Shell
- Generate SSH key `ssh-keygen -t rsa` in cloud shell and add it to Github Repository
- Clone Github Repository

  ![Repo Clone](./project%20info/clone_repo.png)
- Create and activate virtual environemnt

  ```
  python3 -m venv venv
  source venv/bin/activate
  ```
  
#### 1.2 Run local test
- Run make all command in azure shell

  ![Test Passed](./project%20info/make_all_pass_test.png)
  
## 2. Configure Continious Integration on Github

#### 2.1 Run remote test on Github SaaS server
- pythonapp.yml contains GitHub Actions which will be triggered by any change in the repo

  ![Github Build](./project%20info/github_actions_build.png)
  
## 3. Configure Continious Delivery on Azure

#### 3.1 Create azure webapp in azure cloud shell
- Command to create webapp

  ```az webapp up -n helloflaskmoascode -g azuredevops -l southeastasia --sku F1```
- Verify webapp in azure ui

  ![Webapp Running](./project%20info/web_app_running.png)

#### 3.2 Deploy the application using Azure Pipelines into Azure App Services
- Build and deployment stages in Azure pipeline

  ![Webapp Running](./project%20info/successful_build_deploy.png)

- Verify Webapp deployment config

  ![Webapp Running](./project%20info/webapp_deployment.png)

- Verify with web url

  ![Web url](./project%20info/successful_web_home.png)

- Verify with a successful prediction in Azure Cloud Shell

  ![Prediction](./project%20info/successful_prediction.png)

- Verify with logs in the cloud shell using ```az webapp log tail```

  ![Log CLI](./project%20info/webapp_log_cli.png)

- Verify with logs in the portal

  ![Log Portal](./project%20info/webapp_log_portal.png)

#### 3.1 Load test an application using Locust.

- Screenshot of the application running against a load test with locust.
  
# Enhancements
  


