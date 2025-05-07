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
    echo -e "UCLI-Tools is a genuine approach to making technology accessible to everyone."
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

    echo -e "${BOLD}${GREEN}Get Started with UCLI${NC}\\n"
    echo -e "1. ${YELLOW}Install UCLI:${NC}"
    echo -e "   First, install the UCLI main script. Run these commands in your terminal one by one:"
    echo -e "     ${PURPLE}wget https://raw.githubusercontent.com/ucli-tools/ucli/main/ucli.sh${NC}"
    echo -e "     ${PURPLE}bash ./ucli.sh install${NC}"
    echo -e "     ${PURPLE}rm ./ucli.sh${NC}"
    echo -e "   This makes the ${GREEN}ucli${NC} command available system-wide.\\n"
    echo -e "2. ${YELLOW}Default Login:${NC}"
    echo -e "   Upon installation, UCLI is configured to access tools from the ${BLUE}ucli-tools${NC} GitHub organization by default."
    echo -e "   You can add other sources later if needed.\\n"
    echo -e "3. ${YELLOW}Install Prerequisites:${NC}"
    echo -e "   Some tools may require common prerequisite software. You can install them by running:"
    echo -e "     ${PURPLE}ucli prereq${NC}\\n"
    echo -e "4. ${YELLOW}Build and Install Tools:${NC}"
    echo -e "   To install a specific tool, for example 'gits', run:"
    echo -e "     ${PURPLE}ucli build gits${NC}"
    echo -e "   This downloads the tool and makes it available as a command (e.g., ${GREEN}gits${NC}).\\n"
    echo -e "5. ${YELLOW}Build All Available Tools:${NC}"
    echo -e "   To download and install all tools available from the default ${BLUE}ucli-tools${NC} organization:"
    echo -e "     ${PURPLE}ucli build-all${NC}\\n"
    echo -e "6. ${YELLOW}Update Tools:${NC}"
    echo -e "   Keep your tools up-to-date with the latest releases:"
    echo -e "     ${PURPLE}ucli update${NC}\\n"

    echo -e "${BOLD}${GREEN}Join Us${NC}"
    echo -e "UCLI-Tools is more than just software—it's a movement to make technology"
    echo -e "more accessible, understandable, and useful for everyone. Whether you're"
    echo -e "a developer, a system administrator, or just someone who wants to get"
    echo -e "things done efficiently, UCLI-Tools is for you.\n"

    echo -e "Visit us at: ${BLUE}https://github.com/ucli-tools${NC}"
    echo -e "License: ${BLUE}Apache 2.0 ThreeFold${NC}\n"

    echo -e "${CYAN}To learn how to create tools aligned with the UCLI vision,${NC}"
    echo -e "${CYAN}run: ${GREEN}ucli-home prompt${NC}.\n"

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

    echo -e "${BOLD}${GREEN}Get Started with UCLI${NC}\\\\n"
    echo -e "1. ${YELLOW}Install UCLI:${NC}"
    echo -e "   First, install the UCLI main script. Run these commands in your terminal one by one:"
    echo -e "     ${PURPLE}wget https://raw.githubusercontent.com/ucli-tools/ucli/main/ucli.sh${NC}"
    echo -e "     ${PURPLE}bash ./ucli.sh install${NC}"
    echo -e "     ${PURPLE}rm ./ucli.sh${NC}"
    echo -e "   This makes the ${GREEN}ucli${NC} command available system-wide.\\\\n"
    echo -e "2. ${YELLOW}Default Login:${NC}"
    echo -e "   Upon installation, UCLI is configured to access tools from the ${BLUE}ucli-tools${NC} GitHub organization by default."
    echo -e "   You can add other sources later if needed.\\\\n"
    echo -e "3. ${YELLOW}Install Prerequisites:${NC}"
    echo -e "   Some tools may require common prerequisite software. You can install them by running:"
    echo -e "     ${PURPLE}ucli prereq${NC}\\\\n"
    echo -e "4. ${YELLOW}Build and Install Tools:${NC}"
    echo -e "   To install a specific tool, for example 'gits', run:"
    echo -e "     ${PURPLE}ucli build gits${NC}"
    echo -e "   This downloads the tool and makes it available as a command (e.g., ${GREEN}gits${NC}).\\\\n"
    echo -e "5. ${YELLOW}Build All Available Tools:${NC}"
    echo -e "   To download and install all tools available from the default ${BLUE}ucli-tools${NC} organization:"
    echo -e "     ${PURPLE}ucli build-all${NC}\\\\n"
    echo -e "6. ${YELLOW}Update Tools:${NC}"
    echo -e "   Keep your tools up-to-date with the latest releases:"
    echo -e "     ${PURPLE}ucli update${NC}\\\\n"

    echo -e "${CYAN}To learn how to create tools aligned with the UCLI vision,${NC}"
    echo -e "${CYAN}run: ${GREEN}ucli-home prompt${NC}\\\\n"

    echo -e "${PURPLE}Commands:${NC}"
    echo -e "  ${GREEN}(no command)${NC}"
    echo -e "                  ${BLUE}Actions:${NC} Display the UCLI-Tools manifesto"
    echo -e "                  ${BLUE}Example:${NC} ucli-home\n"

    echo -e "  ${GREEN}prompt${NC}"
    echo -e "                  ${BLUE}Actions:${NC} Display AI prompt information for working with ucli-tools"
    echo -e "                  ${BLUE}Example:${NC} ucli-home prompt\n"

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

# Function to display AI prompt information
show_prompt_info() {
    clear
    echo -e "${BOLD}${CYAN}═══════════════════════════════════════════════════════════════════════════${NC}"
    echo -e "${BOLD}${CYAN}                  AI PROMPT GUIDE FOR UCLI-TOOLS                           ${NC}"
    echo -e "${BOLD}${CYAN}═══════════════════════════════════════════════════════════════════════════${NC}\n"

    echo -e "This prompt can be fed to an AI. This allows AI to quickly understand the"
    echo -e "vision and design of the UCLI tools, allowing anyone to create tools with ease.\n"

    echo -e "${BOLD}${GREEN}UCLI-Tools Design Pattern${NC}"
    echo -e "The UCLI-Tools project follows a consistent design pattern that makes it easy"
    echo -e "to create, build, and use command-line tools on Ubuntu systems. This guide"
    echo -e "provides information for AI systems to understand and work with this pattern.\n"

    echo -e "${BOLD}${GREEN}Directory Structure${NC}"
    echo -e "Each tool typically follows this structure:"
    echo -e "  ${BLUE}toolname/${NC}          - Main directory for the tool"
    echo -e "  ${BLUE}├── toolname.sh${NC}    - Main bash script (executable)"
    echo -e "  ${BLUE}├── Makefile${NC}       - Standard Makefile for installation"
    echo -e "  ${BLUE}├── LICENSE${NC}        - Apache 2.0 ThreeFold license"
    echo -e "  ${BLUE}└── README.md${NC}      - Documentation\n"

    echo -e "${BOLD}${GREEN}Standard Makefile Pattern${NC}"
    echo -e "All tools use this standard Makefile pattern:"
    echo -e "${YELLOW}# Get the script name dynamically based on sole script in repo"
    echo -e "SCRIPT_NAME := \$(wildcard *.sh)"
    echo -e "INSTALL_NAME := \$(basename \$(SCRIPT_NAME))"
    echo -e ""
    echo -e "build:"
    echo -e "\tbash \$(SCRIPT_NAME) install"
    echo -e ""
    echo -e "rebuild:"
    echo -e "\t\$(INSTALL_NAME) uninstall"
    echo -e "\tbash \$(SCRIPT_NAME) install"
    echo -e "\t"
    echo -e "delete:"
    echo -e "\t\$(INSTALL_NAME) uninstall${NC}\n"

    echo -e "${BOLD}${GREEN}Bash Script Structure${NC}"
    echo -e "Each tool's bash script should include these standard functions:"
    echo -e "  ${BLUE}install()${NC}      - Installs the tool to /usr/local/bin"
    echo -e "  ${BLUE}uninstall()${NC}    - Removes the tool from /usr/local/bin"
    echo -e "  ${BLUE}help()${NC}         - Displays help information"
    echo -e "  ${BLUE}main()${NC}         - Main execution logic with command handling\n"

    echo -e "${BOLD}${GREEN}UCLI Integration${NC}"
    echo -e "Tools are designed to be built and managed through the UCLI command:"
    echo -e "  ${PURPLE}ucli build toolname${NC}    - Builds and installs the tool"
    echo -e "  ${PURPLE}ucli list${NC}              - Lists available tools"
    echo -e "  ${PURPLE}ucli update${NC}            - Updates all installed tools\n"

    echo -e "${BOLD}${GREEN}Best Practices for AI-Generated Tools${NC}"
    echo -e "1. ${YELLOW}Follow the standard directory structure${NC}"
    echo -e "2. ${YELLOW}Use the standard Makefile pattern exactly as shown${NC}"
    echo -e "3. ${YELLOW}Include all required functions in the bash script${NC}"
    echo -e "4. ${YELLOW}Use consistent color coding for terminal output${NC}"
    echo -e "6. ${YELLOW}Include comprehensive help documentation${NC}"
    echo -e "7. ${YELLOW}Follow the Apache 2.0 ThreeFold license${NC}\n"

    echo -e "${BOLD}${GREEN}Example: Creating a New UCLI Tool ('mytool')${NC}"
    echo -e "Follow these steps to develop and integrate your own tool, for example, one named 'mytool':\\n"

    echo -e "  ${YELLOW}Part 1: Local Tool Development${NC}"
    echo -e "  1. ${CYAN}Create Project Directory:${NC} Make a directory for your tool: ${BLUE}mkdir mytool && cd mytool${NC}"
    echo -e "  2. ${CYAN}Develop Bash Script:${NC} Create your main tool script, e.g., ${BLUE}mytool.sh${NC}."
    echo -e "     Ensure it includes the standard ${BLUE}install(), uninstall(), help(),${NC} and ${BLUE}main()${NC} functions."
    echo -e "  3. ${CYAN}Add Standard Makefile:${NC} Create a file named ${BLUE}Makefile${NC} in your ${BLUE}mytool/${NC} directory."
    echo -e "     Copy the exact content of the 'Standard Makefile Pattern' (shown above) into this file."
    echo -e "  4. ${CYAN}Include License:${NC} Create a ${BLUE}LICENSE${NC} file in ${BLUE}mytool/${NC} with the Apache 2.0 ThreeFold license text."
    echo -e "  5. ${CYAN}Write Documentation:${NC} Create a ${BLUE}README.md${NC} file in ${BLUE}mytool/${NC} explaining how to use your tool.\\n"

    echo -e "  ${YELLOW}Part 2: GitHub Integration and UCLI Build${NC}"
    echo -e "  6. ${CYAN}Create GitHub Repository:${NC}"
    echo -e "     - Create a new public GitHub repository. The repository name ${BOLD}must match${NC} your tool's script name (e.g., ${BLUE}mytool${NC} for ${BLUE}mytool.sh${NC})."
    echo -e "     - This repository can be under your personal GitHub account or an organization."
    echo -e "     - Push your ${BLUE}mytool.sh, Makefile, LICENSE,${NC} and ${BLUE}README.md${NC} files to this repository."
    echo -e "  7. ${CYAN}Configure UCLI Access:${NC}"
    echo -e "     - If your repository is not under the default ${BLUE}ucli-tools${NC} organization, you'll need to tell UCLI about your GitHub username or organization."
    echo -e "     - Use the command: ${PURPLE}ucli login <your_github_username_or_org>${NC}"
    echo -e "  8. ${CYAN}Build with UCLI:${NC}"
    echo -e "     - Now, you (or others) can build and install your tool using UCLI:"
    echo -e "       ${PURPLE}ucli build mytool${NC}\\n"

    echo -e "This process ensures your tool is discoverable and manageable through the UCLI ecosystem."

    echo -e "${BOLD}${CYAN}═══════════════════════════════════════════════════════════════════════════${NC}"
    echo -e "${BOLD}${CYAN}                  CREATING CONSISTENT UCLI TOOLS                           ${NC}"
    echo -e "${BOLD}${CYAN}═══════════════════════════════════════════════════════════════════════════${NC}\n"
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
        prompt)
            show_prompt_info
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
