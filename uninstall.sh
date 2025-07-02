#!/bin/bash

# JSON Formatter CLI Uninstall Script

SCRIPT_NAME="jsonfmt"
INSTALL_DIR="/usr/local/bin"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'

echo -e "${CYAN}🗑️  Uninstalling JSON Formatter CLI${NC}"
echo

# Check for administrator privileges
if [[ $EUID -ne 0 ]]; then
   echo -e "${RED}❌ This script must be run with administrator privileges${NC}"
   echo "Use: sudo $0"
   exit 1
fi

# Check if script is installed
if [[ ! -f "$INSTALL_DIR/$SCRIPT_NAME" ]]; then
    echo -e "${YELLOW}⚠️  $SCRIPT_NAME is not installed in $INSTALL_DIR${NC}"
    echo "Nothing to uninstall."
    exit 0
fi

# Show what will be removed
echo -e "${YELLOW}📋 The following will be removed:${NC}"
echo "  - $INSTALL_DIR/$SCRIPT_NAME"
echo

# Ask for confirmation
read -p "Are you sure you want to uninstall $SCRIPT_NAME? (y/N): " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo -e "${YELLOW}❌ Uninstallation cancelled${NC}"
    exit 0
fi

# Remove the script
echo -e "${YELLOW}🗑️  Removing $SCRIPT_NAME...${NC}"
if rm "$INSTALL_DIR/$SCRIPT_NAME"; then
    echo -e "${GREEN}✅ $SCRIPT_NAME successfully uninstalled${NC}"
    echo
    echo -e "${CYAN}🎉 JSON Formatter CLI has been removed from your system${NC}"
    echo
    echo -e "${YELLOW}Note:${NC}"
    echo "  - jq dependency was not removed (it may be used by other tools)"
    echo "  - If you want to remove jq, run: sudo apt remove jq"
else
    echo -e "${RED}❌ Failed to uninstall $SCRIPT_NAME${NC}"
    echo "Please check permissions and try again."
    exit 1
fi 