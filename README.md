# Overview

This project is about creating a python program with machine learning capability, using flask.
Leveraging CI/CD pipelines technology was used to deploy and run the app.

A Continous Integration (CI) pipeline was set in Github Actions
See following README for details

![README-scaffold.md](README-scaffold.md)

A Continuous Distribution (CD) pipeline has been built in Azure pipeline, and using a web app for running the webservice/Flask API.

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

Note: locust test couldn't run due to the version of Python in Azure Cloud Shell. It looks like there is a requirement for 3.6. The current version is 3.5.3. The locust.py does exist in the repository, for reference.


* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).
![Azure-Pipelines-setup](https://github.com/srossan/devops-project/blob/master/images/Azure-pipelines-setup.png)

* Running Azure App Service from Azure Pipelines automatic deployment
![Azure-runs](https://github.com/srossan/devops-project/blob/master/images/Azure-pipelines-runs.png)

* Successful prediction from deployed flask app in Azure Cloud Shell.
![Prediction](https://github.com/srossan/devops-project/blob/master/images/Azure-Cloud-Shell-prediction.png)

* Output of streamed log files from deployed application
![Tail_logs1](https://github.com/srossan/devops-project/blob/master/images/Azure-Webapp-tail_log1.png)
![Tail_logs2](https://github.com/srossan/devops-project/blob/master/images/Azure-Webapp-tail_log2.png)

* Commands to use to setup the web service in Azure
As a reference, a commands.sh shell script exists in the repository, and list the various commands to run to start the webapp, and also to tail the logs.


## Enhancements

For efficiency, I will recommend to run the CI and the CD out of the Azure Devops stack, and ensure the CI pipeline kicks the CD one. As of this current project, they are both independent and running in two different environments. It makes sense to have both running in a single target (platform).

Also, since the Flask ML API is in a docker container, it may be more beneficial to run in a kubernetes environment, for production purpose, which could increase the reliability and scalability of the numbers of containers. 
Having a N+1 architecture could protect the app from failures. Also, having the capability of having a blue/green mechanism, could manage versioning of the app.

## Demo 

<TODO: Add link Screencast on YouTube>


