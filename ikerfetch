#!/bin/bash

# ANSI color codes
BLUE='\033[0;34m'
TURQUOISE='\033[38;5;38m'
GREEN='\033[0;32m' 
NC='\033[0m'       # No color (reset)

# Function to print ASCII art
print_ascii_art() {
    printf "\n${BLUE}$(figlet -f slant Ikerfetch)${NC}\n"
}

# Function to get OS name
get_os_name() {
    echo "$(uname -s) $(uname -r)"
}

# Function to get CPU info
get_cpu_info() {
    echo -e "${BLUE}🔲CPU:${NC} $(grep 'model name' /proc/cpuinfo | head -n 1 | awk -F': ' '{print $2}')"
}

# Function to get current shell
get_current_shell() {
    echo "$(basename $SHELL)"
}

# Function to get memory info
get_memory_info() {
    free -h | awk 'NR==2{printf "🎞️ Memory:%s/%s (%.2f%%)\n", $3,$2,$3*100/$2 }'
}

code() {
    printf "${BLUE}{} Code: ${NC}Shell ${TURQUOISE}(100)${NC}\n"
}
# Function to display colors used
display_colors() {
    echo -e "${BLUE}🎨Colors Used:${NC} ${BLUE}●${NC}  ${TURQUOISE}●${NC}  ${GREEN}●${NC}"
}


# Main function to display all information
display_info() {
    print_ascii_art
    # Get OS name and print it in blue
    echo -e "🐧${BLUE}Kernel:${NC} $(get_os_name)"
    # Get CPU info and print it
    cpu_info=$(get_cpu_info)
    echo "$cpu_info"
    # Get current shell and print it
    echo -e "${BLUE}🔧 Shell:${NC} $(get_current_shell)"
    # Get memory info and format it
    memory_info=$(get_memory_info)
    memory_title=$(echo "$memory_info" | cut -d':' -f1)
    memory_details=$(echo "$memory_info" | cut -d':' -f2-)
    # Print memory title in blue and details in default color
    echo -e "${BLUE}${memory_title}:${NC} ${memory_details}"
    code
    # Display colors used
    display_colors
}
# Call the main function
display_info