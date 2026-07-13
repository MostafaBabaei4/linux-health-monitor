#!/usr/bin/env bash

print_services() {

    print_section_header "Services"

    for service in "${SERVICES[@]}"; do
        if systemctl is-active --quiet "$service"; then
            printf "%-18s : %s\n" "$service" "Running"
        else
            printf "%-18s : %s\n" "$service" "Not Running"
        fi

    done
}

