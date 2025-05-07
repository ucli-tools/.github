#!/bin/bash

# ANSI color codes
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
GREEN='\033[0;32m'
RED='\033[0;31m'
ORANGE='\033[38;5;208m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m' # No Color

# Function to display the manifesto
show_manifesto() {
    clear
    echo -e "${BOLD}${CYAN}═══════════════════════════════════════════════════════════════════════════${NC}"
    echo -e "${BOLD}${CYAN}                        UCLI-TOOLS MANIFESTO                               ${NC}"
    echo -e "${BOLD}${CYAN}═══════════════════════════════════════════════════════════════════════════${NC}\n"
    
    echo -e "${BOLD}${GREEN}Our Vision${NC}"
    echo -e "UCLI-Tools is a revolutionary approach to making technology accessible to everyone."
    echo -e "We combine the power of AI and open source to democratize knowledge and practical"
    echo -e "technology applications, ensuring they are easy to use and available to all.\n"
    
    echo -e "${BOLD}${GREEN}Our Approach${NC}"
    echo -e "1. ${YELLOW}Simplicity${NC}: The Uncomplicated Command Line Interface (UCLI) makes complex"
    echo -e "   tools accessible through simple, consistent commands."
    
    echo -e "2. ${YELLOW}Modularity${NC}: Each tool is a standalone bash script that can be used"
    echo -e "   independently or as part of the larger ecosystem."
    
    echo -e "3. ${YELLOW}Standardization${NC}: All tools follow the same pattern with help, install,"
    echo -e "   and uninstall functions, making them predictable and easy to learn."
    
    echo -e "4. ${YELLOW}Longevity${NC}: We build for Ubuntu LTS releases (e.g., 2024's 5-year LTS),"
    echo -e "   ensuring tools remain functional and relevant for years."
    
    echo -e "5. ${YELLOW}Adaptability${NC}: Our design makes it easy to adapt tools to new Ubuntu"
    echo -e "   versions as they are released.\n"
    
    echo -e "${BOLD}${GREEN}How It Works${NC}"
    echo -e "UCLI-Tools is built on a simple yet powerful concept:"
    
    echo -e "• ${BLUE}All applications are bash scripts${NC}, making them lightweight and portable."
    echo -e "• ${BLUE}A standard Makefile pattern${NC} is used across all tools for consistency."
    echo -e "• ${BLUE}The UCLI command${NC} serves as the central interface to build and access all tools."
    echo -e "• ${BLUE}Once built${NC}, tools are accessible directly from the command line."
    
    echo -e "\nFor example, after building the 'gits' tool:"
    echo -e "  ${PURPLE}ucli build gits${NC}"
    echo -e "You can use it directly from the command line:"
    echo -e "  ${PURPLE}gits clone-all${NC}\n"
    
    echo -e "${BOLD}${GREEN}Our Commitment${NC}"
    echo -e "We are committed to:"
    echo -e "• Maintaining open source under the Apache 2.0 ThreeFold license"
    echo -e "• Creating tools that solve real-world problems"
    echo -e "• Building a community of contributors and users"
    echo -e "• Continuously improving and expanding our toolkit\n"
    
    echo -e "${BOLD}${GREEN}Join Us${NC}"
    echo -e "UCLI-Tools is more than just software—it's a movement to make technology"
    echo -e "more accessible, understandable, and useful for everyone. Whether you're"
    echo -e "a developer, a system administrator, or just someone who wants to get"
    echo -e "things done efficiently, UCLI-Tools is for you.\n"
    
    echo -e "Visit us at: ${BLUE}https://github.com/ucli-tools${NC}"
    echo -e "License: ${BLUE}Apache 2.0 ThreeFold${NC}\n"
    
    echo -e "${BOLD}${CYAN}═══════════════════════════════════════════════════════════════════════════${NC}"
    echo -e "${BOLD}${CYAN}                     MAKING TECHNOLOGY FOR EVERYONE                         ${NC}"
    echo -e "${BOLD}${CYAN}═══════════════════════════════════════════════════════════════════════════${NC}\n"
}

# Function to install the script
install() {
    echo
    echo -e "${GREEN}Installing UCLI-Home...${NC}"
    if sudo -v; then
        sudo cp "$0" /usr/local/bin/ucli-home
        sudo chown root:root /usr/local/bin/ucli-home
        sudo chmod 755 /usr/local/bin/ucli-home

        echo
        echo -e "${PURPLE}UCLI-Home has been installed successfully.${NC}"
        echo -e "You can now use ${GREEN}ucli-home${NC} command from anywhere."
        echo
        echo -e "Use ${BLUE}ucli-home help${NC} to see the commands."
        echo
    else
        echo -e "${RED}Error: Failed to obtain sudo privileges. Installation aborted.${NC}"
        exit 1
    fi
}

# Function to uninstall the script
uninstall() {
    echo
    echo -e "${GREEN}Uninstalling UCLI-Home...${NC}"
    if sudo -v; then
        sudo rm -f /usr/local/bin/ucli-home
        echo -e "${PURPLE}UCLI-Home has been uninstalled successfully.${NC}"
        echo
    else
        echo -e "${RED}Error: Failed to obtain sudo privileges. Uninstallation aborted.${NC}"
        exit 1
    fi
}

# Help function
help() {
    echo -e "\n${ORANGE}═══════════════════════════════════════════${NC}"
    echo -e "${ORANGE}              UCLI-Home                    ${NC}"
    echo -e "${ORANGE}═══════════════════════════════════════════${NC}\n"
    
    echo -e "${PURPLE}Description:${NC} UCLI-Home displays the UCLI-Tools manifesto and mission statement."
    echo -e "${PURPLE}Usage:${NC}       ucli-home [command]"
    echo -e "${PURPLE}License:${NC}     Apache 2.0 ThreeFold"
    echo -e "${PURPLE}Code:${NC}        https://github.com/ucli-tools/home\n"
    
    echo -e "${PURPLE}Commands:${NC}"
    echo -e "  ${GREEN}(no command)${NC}"
    echo -e "                  ${BLUE}Actions:${NC} Display the UCLI-Tools manifesto"
    echo -e "                  ${BLUE}Example:${NC} ucli-home\n"
    
    echo -e "  ${GREEN}install${NC}"
    echo -e "                  ${BLUE}Actions:${NC} Install ucli-home to /usr/local/bin"
    echo -e "                  ${BLUE}Example:${NC} ucli-home install\n"
    
    echo -e "  ${GREEN}uninstall${NC}"
    echo -e "                  ${BLUE}Actions:${NC} Remove ucli-home from /usr/local/bin"
    echo -e "                  ${BLUE}Example:${NC} ucli-home uninstall\n"
    
    echo -e "  ${GREEN}help${NC}"
    echo -e "                  ${BLUE}Actions:${NC} Display this help message"
    echo -e "                  ${BLUE}Example:${NC} ucli-home help\n"
}

# Main execution logic
main() {
    if [ $# -eq 0 ]; then
        show_manifesto
        exit 0
    fi

    case "$1" in
        install)
            install
            ;;
        uninstall)
            uninstall
            ;;
        help)
            help
            ;;
        *)
            echo -e "${RED}Error: Command '$1' not found in ucli-home${NC}"
            echo -e "Run '${GREEN}ucli-home help${NC}' for usage information."
            exit 1
            ;;
    esac
}

# Run the main function
main "$@"