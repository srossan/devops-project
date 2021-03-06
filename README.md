# Overview

This project reflects and demonstrates everything learn from the Agile Development with Azure class, part of the DevOps Engineer for Microsoft Azure Nanodegree Program.

Project plan and tasks were setup in Trello and Google spreadsheet.

There are two parts. The first one is about how to setup a Continuous Integration (CI) pipeline in Github. The second is to about how to set a Continuous Delivery (CD) pipeline in Azure. The CD pipeline will deliver a webapp service, listening to any API requests. 

A submission of various JSON parameters will be sent to the API, and prediction will be displayed. The output will prove the service is set correctly



# Project Plan
Please find the URLs for the trello kanban board and the Google Spreadsheet below.

* Trello: https://trello.com/b/H8cuaUAT/devops-training
* Google Spreadsheet: https://docs.google.com/spreadsheets/d/1El5EqIXoPMPXIe8cITC4ZG7C2-l7u4OVyhgBg-pQEck/edit?usp=sharing


# Pipelines

## Continuous Integration

A Continous Integration (CI) pipeline is set in Github Actions.

* Setup in Azure Cloud Shell

![setup](https://github.com/srossan/devops-project/blob/master/images/Azure-Cloud-Shell-git_clone.png)

* Setup of the python virtual machine

![virtualenv](https://github.com/srossan/devops-project/blob/master/images/Azure-Cloud-Shell-Python_virtualmachine.png)

* Execution
Following directions from the instructions, a make all command was executed (for the ci portion, the exact command is make all-ci)

![make all](https://github.com/srossan/devops-project/blob/master/images/devops-proj_make-all.png)

* Results
Checking Github actions were successful

![Github actions passed](https://github.com/srossan/devops-project/blob/master/images/devops-proj-github-actions-passed.png)

![Python application test with Github Actions](https://github.com/srossan/devops-project/workflows/Python%20application%20test%20with%20Github%20Actions/badge.svg)


## Continuous Delivery 

* Architectural Diagram (Shows how key parts of the system work)

![architecture](https://github.com/srossan/devops-project/blob/master/images/cd-diagram.png)

A python program is pushed through the CD pipeline, set an API web service, ready to deliver a prediction based on various parameters.
A shell script is used to pass JSON parameters to the API. 

Following are the screenshots of the various steps involved on the CD deployment, and run of the program.

* Project running on Azure App Service

![webapp](https://github.com/srossan/devops-project/blob/master/images/Azure-webapp-running.png)


* Project cloned into Azure Cloud Shell

![git_clone](https://github.com/srossan/devops-project/blob/master/images/Azure-Cloud-Shell-git_clone.png)

* Passing tests that are displayed after running the `make all` command from the `Makefile`
![make_all](https://github.com/srossan/devops-project/blob/master/images/Azure-Cloud-Shell-make_all.png)

* Output of a test run
![make_test](https://github.com/srossan/devops-project/blob/master/images/Azure-Cloud-Shell-make_test.png)

* Successful deploy of the project in Azure Pipelines.  
![Azure-Pipelines-setup](https://github.com/srossan/devops-project/blob/master/images/Azure-pipelines-setup.png)

[Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment
![Azure-runs](https://github.com/srossan/devops-project/blob/master/images/Azure-pipelines-runs.png)

* Successful prediction from deployed flask app in Azure Cloud Shell.
![Prediction](https://github.com/srossan/devops-project/blob/master/images/Azure-Cloud-Shell-prediction.png)

* Output of streamed log files from deployed application
![Tail_logs1](https://github.com/srossan/devops-project/blob/master/images/Azure-Webapp-tail_log1.png)
![Tail_logs2](https://github.com/srossan/devops-project/blob/master/images/Azure-Webapp-tail_log2.png)

* Commands to use to setup the web service in Azure
A shell script exists in the repository, and list the various commands to run to start the webapp, and also to tail the logs.
It is called commands.sh


# Enhancements

For efficiency, I will recommend to run the CI and the CD out of the Azure Devops stack, and ensure the CI pipeline kicks the CD one. As of this current project, they are both independent and running in two different environments. It makes sense to have both running in a single target (platform).

The name of the webservice is hardcoded in various places of the git repository, and the azure pipelines. It could be set more efficiently if we could leverage some kind of variables.

Testing for the API service need to be improved. The incompatibility of the locust module prevented advanced testing. It needs to be resolved.

Also, since the Flask ML API is in a docker container, it may be more beneficial to run in a kubernetes environment, for production purpose, which could increase the reliability and scalability of the numbers of containers. 
Having a N+1 architecture could protect the app from failures. Also, having the capability of having a blue/green mechanism, could manage versioning of the app.

# Demo 

Please check out my video: https://youtu.be/0JATiCjM6UQ


