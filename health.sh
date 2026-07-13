#!/usr/bin/env bash

set -euo pipefail

source "$(dirname "$0")/lib/utils.sh"
source "$(dirname "$0")/lib/cpu.sh"

print_header
print_cpu_info

