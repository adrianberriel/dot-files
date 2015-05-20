#!/bin/bash

export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/adri/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

export HOMEBREW_GITHUB_API_TOKEN=1f7c1b6f57c8b0989e35e8494466b1da948aa4e9
export HOMEBREW_CASK_OPTS='--appdir=/Applications'

export LC_ALL=en_US.utf-8

export EDITOR=vim

export PYTHONSTARTUP=$HOME/.pythonrc.py

# Virtual Environment
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Code
source /usr/local/bin/virtualenvwrapper.sh
