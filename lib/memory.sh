print_memory_info() {
    local total_memory
    local used_memory
    local free_memory
    local available_memory

    print_section_header "Memory Information"

    total_memory=$(free -h | awk 'NR==2 {print $2}')
    used_memory=$(free -h | awk 'NR==2 {print $3}')
    free_memory=$(free -h | awk 'NR==2 {print $4}')
    available_memory=$(free -h | awk 'NR==2 {print $7}')

    printf "%-18s : %s\n" "Total Memory" "$total_memory"
    printf "%-18s : %s\n" "Used Memory" "$used_memory"
    printf "%-18s : %s\n" "Free Memory" "$free_memory"
    printf "%-18s : %s\n" "Available Memory" "$available_memory"
}

