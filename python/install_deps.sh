#!/usr/bin/env bash

# System Packages
sudo apt-get update -y
sudo apt-get install vim -y


# Python Dependencies
pip3 install toml

INSTALL_DEPS=$(cat <<END
import toml

c = toml.load("pyproject.toml")
app_deps = c["project"]["dependencies"]
dev_deps = c["project"]["dev-dependencies"]
deps = app_deps + dev_deps

print("\n".join(deps))
END
)

python3 -c "$INSTALL_DEPS" | pip3 install -r /dev/stdin
