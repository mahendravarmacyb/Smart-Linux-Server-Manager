#!/bin/bash

############################################################
# Smart Linux Server Manager
# File        : install.sh
# Description : Project Installation Script
# Author      : Mahendra Varma Datla
############################################################

set -e

PROJECT_NAME="Smart Linux Server Manager"

# Directories
DIRECTORIES=(
    "logs"
    "backups"
    "reports"
    "config"
    "cron"
    "docs"
    "screenshots"
    "sample_output"
)

# Log files
LOG_FILES=(
    "logs/application.log"
    "logs/errors.log"
    "logs/backup.log"
)

############################################
# Banner
############################################

banner() {
    clear
    echo "======================================================="
    echo "        Smart Linux Server Manager Installer"
    echo "======================================================="
    echo
}

############################################
# Colored Messages
############################################

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

info() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

############################################
# Check OS
############################################

check_os() {

    info "Checking Operating System..."

    if [[ ! -f /etc/os-release ]]; then
        error "Cannot detect Linux distribution."
        exit 1
    fi

    source /etc/os-release

    echo "Detected OS : $PRETTY_NAME"

    success "Operating system check completed."

    echo
}

############################################
# Dependency Check
############################################

check_dependency() {

    if command -v "$1" >/dev/null 2>&1
    then
        success "$1 Found"
    else
        warning "$1 Not Installed"
    fi

}

check_dependencies() {

    info "Checking Required Commands..."

    check_dependency bash
    check_dependency tar
    check_dependency find
    check_dependency chmod
    check_dependency ping
    check_dependency nslookup
    check_dependency traceroute
    check_dependency nmap
    check_dependency docker

    echo
}

############################################
# Create Directories
############################################

create_directories() {

    info "Creating Project Directories..."

    for dir in "${DIRECTORIES[@]}"
    do
        mkdir -p "$dir"
    done

    success "Directories Created."

    echo
}

############################################
# Create Log Files
############################################

create_logs() {

    info "Creating Log Files..."

    for log in "${LOG_FILES[@]}"
    do
        touch "$log"
    done

    success "Log Files Ready."

    echo
}

############################################
# Create Config Files
############################################

create_config() {

    info "Creating Configuration Files..."

    if [[ ! -f config/settings.conf ]]; then

cat > config/settings.conf <<EOF
BACKUP_DIRECTORY=backups
REPORT_DIRECTORY=reports
LOG_DIRECTORY=logs
EOF

    fi

    if [[ ! -f config/users.conf ]]; then
        touch config/users.conf
    fi

    success "Configuration Files Ready."

    echo
}

############################################
# Create Cron Template
############################################

create_cron() {

    info "Creating Cron Template..."

    if [[ ! -f cron/backup.cron ]]; then

cat > cron/backup.cron <<EOF
# Daily Backup Example
0 2 * * * echo "Configure backup here"
EOF

    fi

    success "Cron Template Ready."

    echo
}

############################################
# Make Scripts Executable
############################################

set_permissions() {

    info "Setting Execute Permissions..."

    find scripts -type f -name "*.sh" -exec chmod +x {} \;

    chmod +x install.sh

    if [[ -f uninstall.sh ]]; then
        chmod +x uninstall.sh
    fi

    success "Permissions Updated."

    echo
}

############################################
# Summary
############################################

summary() {

    echo "======================================================="
    echo "Installation Summary"
    echo "======================================================="
    echo

    echo "Project          : $PROJECT_NAME"
    echo "Directories      : Created"
    echo "Configuration    : Ready"
    echo "Log Files        : Ready"
    echo "Permissions      : Updated"

    echo
    success "Installation Completed Successfully."

    echo
    echo "Run the project using:"
    echo
    echo "    bash scripts/main.sh"
    echo
}

############################################
# Main
############################################

main() {

    banner

    check_os

    check_dependencies

    create_directories

    create_logs

    create_config

    create_cron

    set_permissions

    summary
}

main
