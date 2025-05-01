#!/bin/bash

set -e
set -o pipefail

brew install pipx
pipx ensurepath --force

# Install Ansible
pipx install --include-deps "$(cat requirements/ansible/ansible.txt)"
pipx runpip ansible install -r requirements/ansible/ansible-deps.txt

# Install Dev Tools
pipx install "$(cat requirements/devtools/poetry.txt)"
pipx install "$(cat requirements/devtools/pytest.txt)"
pipx runpip pytest install -r requirements/devtools/pytest-deps.txt

# Install linters
pipx install "$(cat requirements/linters/ansible-lint.txt)"
pipx install "$(cat requirements/linters/black.txt)"
pipx install "$(cat requirements/linters/ruff.txt)"
pipx install "$(cat requirements/linters/yamllint.txt)"

# Install OpenStack CLI
pipx install "$(cat requirements/openstack/python-openstackclient.txt)"
pipx runpip python-openstackclient install -r requirements/openstack/python-openstackclient-deps.txt

# Install Utils
pipx install "$(cat requirements/utils/yq.txt)"
