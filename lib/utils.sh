print_header() {
    local current_date
    local hostname
    local current_user
    local kernel

    current_date=$(date '+%Y-%m-%d %H:%M:%S')
    hostname=$(hostname)
    current_user=$(whoami)
    kernel=$(uname -r)

    echo "=========================================="
    echo "        Linux Health Monitor"
    echo "=========================================="
    echo

    printf "%-12s : %s\n" "Generated" "$current_date"
    printf "%-12s : %s\n" "Hostname" "$hostname"
    printf "%-12s : %s\n" "User" "$current_user"
    printf "%-12s : %s\n" "Kernel" "$kernel"
}

print_separator() {
    echo "-----------------------------------------"
}

print_section_header() {
    local title="$1"

    echo
    print_separator
    echo "$title"
    print_separator
    echo
}

