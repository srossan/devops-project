#!/bin/bash

# Start web app in Azure (URL is https://srossan-flask.azurewebsites.net/)
az webapp up -n srossan-flask

# tailling log files
az webapp log tail
