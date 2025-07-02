#!/bin/bash

# JSON Formatter CLI Installation Script

SCRIPT_NAME="jsonfmt"
INSTALL_DIR="/usr/local/bin"
SCRIPT_FILE="jsonfmt"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'

echo -e "${CYAN}🚀 Installing JSON Formatter CLI${NC}"
echo

# Check for administrator privileges
if [[ $EUID -ne 0 ]]; then
   echo -e "${RED}❌ This script must be run with administrator privileges${NC}"
   echo "Use: sudo $0"
   exit 1
fi

# Check for jq availability
echo -e "${YELLOW}📋 Checking dependencies...${NC}"
if ! command -v jq &> /dev/null; then
    echo -e "${YELLOW}📦 Installing jq...${NC}"
    
    # Detect distribution
    if command -v apt &> /dev/null; then
        apt update && apt install -y jq
    elif command -v yum &> /dev/null; then
        yum install -y jq
    elif command -v dnf &> /dev/null; then
        dnf install -y jq
    elif command -v pacman &> /dev/null; then
        pacman -S --noconfirm jq
    elif command -v zypper &> /dev/null; then
        zypper install -y jq
    else
        echo -e "${RED}❌ Could not determine package manager${NC}"
        echo "Install jq manually:"
        echo "  Ubuntu/Debian: sudo apt install jq"
        echo "  CentOS/RHEL: sudo yum install jq"
        echo "  Arch: sudo pacman -S jq"
        exit 1
    fi
else
    echo -e "${GREEN}✅ jq is already installed${NC}"
fi

# Check if script exists
if [[ ! -f "$SCRIPT_FILE" ]]; then
    echo -e "${RED}❌ File $SCRIPT_FILE not found${NC}"
    echo "Make sure you're running the script from the directory containing $SCRIPT_FILE"
    exit 1
fi

# Make script executable
echo -e "${YELLOW}🔧 Setting permissions...${NC}"
chmod +x "$SCRIPT_FILE"

# Copy to system directory
echo -e "${YELLOW}📁 Copying to $INSTALL_DIR...${NC}"
cp "$SCRIPT_FILE" "$INSTALL_DIR/"

# Check installation success
if [[ -f "$INSTALL_DIR/$SCRIPT_FILE" ]]; then
    echo -e "${GREEN}✅ Installation completed successfully!${NC}"
    echo
    echo -e "${CYAN}🎉 JSON Formatter CLI is now available as command: $SCRIPT_NAME${NC}"
    echo
    echo -e "${YELLOW}Usage examples:${NC}"
    echo "  $SCRIPT_NAME '{\"name\": \"John\", \"age\": 30}'"
    echo "  $SCRIPT_NAME -f data.json"
    echo "  $SCRIPT_NAME --help"
    echo
    echo -e "${YELLOW}To uninstall use:${NC}"
    echo "  sudo ./uninstall.sh"
    echo "  # or manually: sudo rm $INSTALL_DIR/$SCRIPT_NAME"
else
    echo -e "${RED}❌ Installation failed${NC}"
    exit 1
fi 