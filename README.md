# Overview

This project is about creating a python program with machine learning capability, using flask.
A CD pipeline has been built in Azure pipeline

## Project Plan
Project Plan

* Trello Link: https://trello.com/b/H8cuaUAT/devops-training
* Google Spreadsheet: https://docs.google.com/spreadsheets/d/1El5EqIXoPMPXIe8cITC4ZG7C2-l7u4OVyhgBg-pQEck/edit?usp=sharing


## Instructions

* Architectural Diagram (Shows how key parts of the system work)
![architecture](https://github.com/srossan/devops-project/blob/master/images/cd-diagram.png)

A shell script is used to pass json parameters to the flask ML API, running out of a Azure app service, to render a prediction. Following are screenshots of the various steps involved on the deployment of the infrastructure, and run of the program.

* Project running on Azure App Service
![webapp](https://github.com/srossan/devops-project/blob/master/images/Azure-webapp-running.png)


* Project cloned into Azure Cloud Shell
![git_clone](https://github.com/srossan/devops-project/blob/master/images/Azure-Cloud-Shell-git_clone.png)

* Passing tests that are displayed after running the `make all` command from the `Makefile`
![make_all](https://github.com/srossan/devops-project/blob/master/images/Azure-Cloud-Shell-make_all.png)

* Output of a test run
![make_test](https://github.com/srossan/devops-project/blob/master/images/Azure-Cloud-Shell-make_test.png)

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).
![Azure-Pipelines-setup](https://github.com/srossan/devops-project/blob/master/images/Azure-pipelines-setup.png)

* Running Azure App Service from Azure Pipelines automatic deployment
![Azure-runs](https://github.com/srossan/devops-project/blob/master/images/Azure-pipelines-runs.png)

* Successful prediction from deployed flask app in Azure Cloud Shell.
![Prediction](https://github.com/srossan/devops-project/blob/master/images/Azure-Cloud-Shell-prediction.png)

* Output of streamed log files from deployed application
![Tail_logs1](https://github.com/srossan/devops-project/blob/master/images/Azure-Webapp-tail_log1.png)
![Tail_logs2](https://github.com/srossan/devops-project/blob/master/images/Azure-Webapp-tail_log2.png)


## Enhancements

<TODO: A short description of how to improve the project in the future>

## Demo 

<TODO: Add link Screencast on YouTube>


