#!/bin/bash

############################################################
# Smart Linux Server Manager
# File        : uninstall.sh
# Description : Project Uninstallation Script
# Author      : Mahendra Varma Datla
############################################################

set -e

PROJECT_NAME="Smart Linux Server Manager"

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

############################################
# Banner
############################################

banner() {

    clear

    echo "======================================================="
    echo "       Smart Linux Server Manager Uninstaller"
    echo "======================================================="
    echo

}

############################################
# Messages
############################################

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
# Confirmation
############################################

confirm() {

    echo "This will remove project generated files."

    echo
    read -p "Do you want to continue? (yes/no): " choice

    case "$choice" in
        yes|YES|y|Y)
            ;;
        *)
            warning "Uninstallation cancelled."
            exit 0
            ;;
    esac

}

############################################
# Remove Logs
############################################

remove_logs() {

    info "Removing log files..."

    rm -f logs/*.log

    success "Logs removed."

}

############################################
# Remove Reports
############################################

remove_reports() {

    info "Removing reports..."

    rm -rf reports/*

    success "Reports removed."

}

############################################
# Remove Backups
############################################

remove_backups() {

    info "Removing backups..."

    rm -rf backups/*

    success "Backups removed."

}

############################################
# Remove Configuration
############################################

remove_config() {

    info "Removing configuration..."

    rm -f config/settings.conf
    rm -f config/users.conf

    success "Configuration removed."

}

############################################
# Remove Cron Template
############################################

remove_cron() {

    info "Removing cron template..."

    rm -f cron/backup.cron

    success "Cron template removed."

}

############################################
# Remove Empty Directories
############################################

remove_directories() {

    info "Removing empty directories..."

    rmdir logs 2>/dev/null || true
    rmdir backups 2>/dev/null || true
    rmdir reports 2>/dev/null || true
    rmdir config 2>/dev/null || true
    rmdir cron 2>/dev/null || true
    rmdir docs 2>/dev/null || true
    rmdir screenshots 2>/dev/null || true
    rmdir sample_output 2>/dev/null || true

    success "Directory cleanup completed."

}

############################################
# Summary
############################################

summary() {

    echo
    echo "======================================================="
    echo "Uninstallation Completed"
    echo "======================================================="
    echo

    success "Project generated files have been removed."

    echo
    echo "Your source code is still available."
    echo "Delete the project folder manually if desired:"
    echo
    echo "rm -rf Smart-Linux-Server-Manager"
    echo

}

############################################
# Main
############################################

main() {

    banner

    confirm

    remove_logs

    remove_reports

    remove_backups

    remove_config

    remove_cron

    remove_directories

    summary

}

main
