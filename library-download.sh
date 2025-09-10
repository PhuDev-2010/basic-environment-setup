#!/bin/bash

# Professional Termux Development Environment Setup Script
# Author: PhuDev
# Version: 2.0

# Color definitions
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
BOLD='\033[1m'
NC='\033[0m' # No Color

# Progress tracking
TOTAL_STEPS=12
CURRENT_STEP=0

# Show header
show_header() {
    clear
    echo -e "${PURPLE}${BOLD}TERMUX PROFESSIONAL DEVELOPMENT SUITE"
    echo -e "Installation Manager v2.0${NC}"
    echo -e "${WHITE}Contact: ${CYAN}Zalo 0816262451 | Facebook: facebook.com/mphudev"
    echo -e "GitHub: ${CYAN}github.com/PhuDev-2020${NC}\n"
}

# Show progress
show_progress() {
    CURRENT_STEP=$((CURRENT_STEP + 1))
    local percent=$((CURRENT_STEP * 100 / TOTAL_STEPS))
    local filled=$((CURRENT_STEP * 50 / TOTAL_STEPS))
    local empty=$((50 - filled))
    
    echo -e "${BLUE}${BOLD}Progress: [${GREEN}$(printf "%*s" $filled | tr ' ' '.')${WHITE}$(printf "%*s" $empty)${BLUE}] ${percent}%${NC}"
    echo -e "${YELLOW}Step ${CURRENT_STEP}/${TOTAL_STEPS}: ${1}${NC}\n"
}

# Logging
log_info()    { echo -e "${BLUE}ℹ ${WHITE}${1}${NC}"; }
log_success() { echo -e "${GREEN}✓ ${WHITE}${1}${NC}"; }
log_warning() { echo -e "${YELLOW}⚠ ${WHITE}${1}${NC}"; }
log_error()   { echo -e "${RED}✗ ${WHITE}${1}${NC}"; }

# Verify command
verify_command() {
    if command -v "$1" >/dev/null 2>&1; then
        log_success "$1 is available"
        return 0
    else
        log_error "$1 is not available"
        return 1
    fi
}

# Install package with retry
install_package() {
    local package="$1"
    local max_retries=3
    local retry_count=0
    
    while [ $retry_count -lt $max_retries ]; do
        log_info "Installing package: ${package} (Attempt $((retry_count + 1))/$max_retries)"
        if pkg install -y "$package" >/dev/null 2>&1; then
            log_success "Installed: $package"
            return 0
        else
            retry_count=$((retry_count + 1))
            [ $retry_count -lt $max_retries ] && { log_warning "Retrying in 3s..."; sleep 3; }
        fi
    done
    log_error "Failed to install: $package"
    return 1
}

# Install Python package
install_python_package() {
    local package="$1"
    local options="--no-cache-dir --disable-pip-version-check"
    log_info "Installing Python package: $package"

    pip install $options "$package" >/dev/null 2>&1 && { log_success "Installed: $package"; return 0; }

    log_warning "Standard install failed, trying user scope..."
    pip install --user $options "$package" >/dev/null 2>&1 && { log_success "Installed (user): $package"; return 0; }

    log_warning "Trying no-deps install..."
    pip install --no-deps $options "$package" >/dev/null 2>&1 && { log_success "Installed (no deps): $package"; return 0; }

    log_error "Failed all install methods for: $package"
    return 1
}

# Main
main() {
    show_header

    show_progress "Initializing Termux storage access"
    termux-setup-storage
    sleep 2

    show_progress "Updating package repositories"
    pkg update -y >/dev/null 2>&1 && log_success "Updated package databases"
    pkg upgrade -y >/dev/null 2>&1 && log_success "System upgraded"

    show_progress "Installing core system packages"
    essential_packages=(python python-pip git curl wget unzip clang make cmake ninja pkg-config autoconf automake libtool m4 perl binutils file which)
    for pkgname in "${essential_packages[@]}"; do install_package "$pkgname"; done

    show_progress "Installing development libraries"
    dev_libraries=(libffi openssl zlib libjpeg-turbo libpng freetype libxml2 libxslt sqlite readline ncurses)
    for pkgname in "${dev_libraries[@]}"; do install_package "$pkgname"; done

    show_progress "Installing multimedia and graphics support"
    multimedia_packages=(littlecms libtiff libwebp giflib libopus libvorbis ffmpeg imagemagick ghostscript)
    for pkgname in "${multimedia_packages[@]}"; do install_package "$pkgname"; done

    show_progress "Installing programming languages"
    language_packages=(nodejs nodejs-lts rust golang ruby perl php openjdk-17 gradle maven)
    for pkgname in "${language_packages[@]}"; do install_package "$pkgname"; done

    show_progress "Verifying Python environment"
    ! verify_command python && install_package python3
    ! verify_command pip && install_package python-pip && python -m ensurepip --upgrade >/dev/null 2>&1
    python -m pip install --upgrade pip >/dev/null 2>&1 && log_success "Pip upgraded"

    show_progress "Installing Python build tools"
    build_packages=(setuptools wheel build twine cython cffi pybind11 packaging tomli flit-core)
    for pkgname in "${build_packages[@]}"; do install_python_package "$pkgname"; done

    show_progress "Installing networking and web libraries"
    network_packages=(requests urllib3 httpx httpcore h11 h2 websockets aiohttp aiofiles asyncio-dgram tornado fastapi uvicorn gunicorn)
    for pkgname in "${network_packages[@]}"; do install_python_package "$pkgname"; done

    show_progress "Installing data processing and scientific libraries"
    data_packages=(numpy pandas matplotlib seaborn plotly jupyter ipython notebook openpyxl xlrd xlsxwriter json5)
    for pkgname in "${data_packages[@]}"; do install_python_package "$pkgname"; done

    show_progress "Installing specialized libraries"
    specialized_packages=(beautifulsoup4 lxml html5lib scrapy selenium cryptography pycryptodome bcrypt passlib pyotp jwt PyMySQL redis pymongo sqlalchemy nltk)
    for pkgname in "${specialized_packages[@]}"; do install_python_package "$pkgname"; done

    show_progress "Installing utility and enhancement libraries"
    utility_packages=(rich colorama termcolor pystyle tqdm click typer pydantic marshmallow cerberus schema voluptuous python-dotenv configparser toml pillow==10.0.0 moviepy==1.0.3 googletrans==4.0.0-rc1 gtts pyttsx3 psutil py-cpuinfo memory-profiler line-profiler pytest pytest-cov mock factory-boy faker flask django fastapi streamlit gradio munch attrs dataclasses-json typing-extensions)
    for pkgname in "${utility_packages[@]}"; do install_python_package "$pkgname"; done

    echo -e "${GREEN}${BOLD}🎉 Installation Complete!${NC}"
    echo -e "${CYAN}Environment ready for development${NC}"
}

set -e
trap 'log_error "Script interrupted"; exit 1' INT TERM

main "$@"