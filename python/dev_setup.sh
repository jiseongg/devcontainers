#!/usr/bin/env bash

WORKSPACE="/workspaces/project_name"

# Git Setup
git config --global safe.directory ${WORKSPACE}

cd ${WORKSPACE}
git config core.hooksPath .githooks

