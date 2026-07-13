print_disk_info() {
    local total_disk
    local used_disk
    local available_disk
    local disk_usage
    local disk_usage_number

    total_disk=$(df -h / | awk 'NR==2 {print $2}')
    used_disk=$(df -h / | awk 'NR==2 {print $3}')
    available_disk=$(df -h / | awk 'NR==2 {print $4}')
    disk_usage=$(df -h / | awk 'NR==2 {print $5}')
    disk_usage_number=$(echo "$disk_usage" | tr -d "%")

    print_section_header "Disk Information"

    printf "%-15s : %s\n" "Total Disk" "$total_disk"
    printf "%-15s : %s\n" "Used Disk" "$used_disk"
    printf "%-15s : %s\n" "Available Disk" "$available_disk"
    printf "%-15s : %s\n" "Disk Usage" "$disk_usage"

    if [ "$disk_usage_number" -gt "$DISK_WARNING_THRESHOLD" ]; then
        echo
        echo "WARNING: Disk usage is above 80%"
    else
        echo
        echo "<< Disk usage is healthy >>"
    fi
}

