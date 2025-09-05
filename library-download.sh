#!/bin/bash

echo "Start setting up a basic developer environment..."
sleep 1

# Initialize storage access
termux-setup-storage

# Update package repositories and upgrade existing packages
echo "Updating package repositories..."
pkg update -y
pkg upgrade -y

# Install core development tools and compilers
echo "Installing core development tools..."
pkg install -y python nodejs git clang make cmake ninja libffi openssl

# Install build automation tools
echo "Installing build automation tools..."
pkg install -y automake autoconf libtool patchelf

# Install multimedia and graphics libraries
echo "Installing multimedia and graphics libraries..."
pkg install -y libjpeg-turbo libpng freetype littlecms libtiff libwebp libxslt libxml2 zlib

# Install Rust programming language
echo "Installing Rust..."
pkg install -y rust

# Install Python build dependencies first
echo "Installing Python build dependencies..."
pip install --no-cache-dir --upgrade pip setuptools wheel
pip install --no-cache-dir "setuptools<70" "wheel<0.44"
pip install --no-cache-dir cython cffi

# Install network and web libraries
echo "Installing network and web libraries..."
pip install --no-cache-dir requests
pip install --no-cache-dir httpx
pip install --no-cache-dir httpcore
pip install --no-cache-dir websockets
pip install --no-cache-dir aiohttp
pip install --no-cache-dir asyncio

# Install web scraping and parsing libraries
echo "Installing web scraping and parsing libraries..."
pip install --no-cache-dir beautifulsoup4
pip install --no-cache-dir lxml
pip install --no-cache-dir html5lib
pip install --no-cache-dir selenium

# Install cryptography libraries
echo "Installing cryptography libraries..."
pip install --no-cache-dir cryptography
pip install --no-cache-dir pycryptodome

# Install user interface and styling libraries
echo "Installing UI and styling libraries..."
pip install --no-cache-dir rich
pip install --no-cache-dir pystyle

# Install translation library
echo "Installing translation library..."
pip install --no-cache-dir googletrans==4.0.0-rc1

# Install database connectivity libraries
echo "Installing database libraries..."
pip install --no-cache-dir mysql-connector-python
pip install --no-cache-dir PyMySQL

# Install web framework libraries
echo "Installing web frameworks..."
pip install --no-cache-dir flask
pip install --no-cache-dir django

# Install natural language processing library
echo "Installing NLP library..."
pip install --no-cache-dir nltk

# Install utility libraries
echo "Installing utility libraries..."
pip install --no-cache-dir munch
pip install --no-cache-dir psutil
pip install --no-cache-dir gtts

# Install image processing library with specific version
echo "Installing image processing library..."
pip install --no-cache-dir Pillow==10.0.0

# Install numerical computing library with version constraint
echo "Installing numerical computing library..."
pip install --no-cache-dir "numpy<2"

# Install video processing library with specific version
echo "Installing video processing library..."
pip install --no-cache-dir "moviepy==1.0.3"

# Install package publishing tool
echo "Installing package publishing tool..."
pip install --no-cache-dir "twine<5.0"

echo "Termux development environment setup completed successfully!"
echo "Zalo: 0816262451"
echo "Facebook: https://www.facebook.com/mphudev"
echo "Github: https://github.com/PhuDev-2020/"