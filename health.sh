#!/usr/bin/env bash

set -euo pipefail

source "$(dirname "$0")/lib/utils.sh"
source "$(dirname "$0")/lib/cpu.sh"
source "$(dirname "$0")/lib/memory.sh"
source "$(dirname "$0")/lib/disk.sh"
source "$(dirname "$0")/lib/services.sh"
source "$(dirname "$0")/config.sh"
 

save_report=false

if [ "${1:-}" = "--save" ]; then
    save_report=true

    timestamp="$(date '+%Y-%m-%d_%H-%M-%S')"
    report_file="${REPORTS_DIRECTORY}/health-${timestamp}.log"
fi


generate_report() {
    print_header
    print_cpu_info
    print_memory_info
    print_disk_info
    print_services
}


if "$save_report"; then
    generate_report | tee "$report_file"
    echo
    echo "Report saved to: $report_file"
    echo
else
    generate_report
fi

