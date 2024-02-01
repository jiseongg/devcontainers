#!/usr/bin/env bash

# Initialize git repository using this template and
# replace `devcontainers/python` with the project directory name
WORKSPACE="/workspaces/devcontainers/csharp"

# Git Setup
git config --global safe.directory ${WORKSPACE}

cd ${WORKSPACE}
git config core.hooksPath .githooks

