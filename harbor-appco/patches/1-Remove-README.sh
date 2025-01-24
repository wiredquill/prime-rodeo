#!/usr/bin/env bash
#
# @file 1-Remove-README.md
# @brief Remove the README.md file
# @description Remove the README.md file from the Helm chart.
#   Users are expected to use Application Collection Reference Guides.
#
# @noargs
#
# @env PACKAGE_PATH string Path to the package in the repository.

# Strict mode
set -euo pipefail

# Debug mode
# set -x

GIT_ROOT_PATH="$(git rev-parse --show-toplevel)"
source "$GIT_ROOT_PATH/scripts/functions.sh"

check_required_environment_variables PACKAGE_PATH

README_FILE="$GIT_ROOT_PATH/packages/$PACKAGE_PATH/README.md"
rm -rf "$README_FILE"
