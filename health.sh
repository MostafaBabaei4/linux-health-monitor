#!/usr/bin/env bash

set -euo pipefail

source "$(dirname "$0")/lib/utils.sh"
source "$(dirname "$0")/lib/cpu.sh"
source "$(dirname "$0")/lib/memory.sh"
source "$(dirname "$0")/lib/disk.sh"
 
print_header
print_cpu_info
print_memory_info
print_disk_info
