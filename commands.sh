#!/bin/bash

# Start webapp
az webapp up -n srossan-flask

# Check logs
az webapp log tail
