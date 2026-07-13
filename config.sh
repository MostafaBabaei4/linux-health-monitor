#!/usr/bin/env bash

# shellcheck disable=SC2034
SERVICES=(
    "sshd"
    "crond"
    "docker"
    "NetworkManager"
)

# shellcheck disable=SC2034
DISK_WARNING_THRESHOLD=80

# shellcheck disable=SC2034
REPORTS_DIRECTORY="reports"

