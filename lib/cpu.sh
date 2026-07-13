print_cpu_info() {
    local cpu_cores
    local architecture
    local load_average

    cpu_cores=$(nproc)
    architecture=$(uname -m)
    load_average=$(uptime | awk -F'load average:' '{print $2}')

    print_section_header "CPU Information"

    printf "%-15s : %s\n" "CPU Cores" "$cpu_cores"
    printf "%-15s : %s\n" "Architecture" "$architecture"
    printf "%-15s : %s\n" "Load Average" "$load_average"
}

