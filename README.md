# Termux Complete Development Environment Setup

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform: Android](https://img.shields.io/badge/Platform-Android-green.svg)](https://termux.com/)
[![Python: 3.x](https://img.shields.io/badge/Python-3.x-blue.svg)](https://www.python.org/)
[![Shell: Bash](https://img.shields.io/badge/Shell-Bash-lightgrey.svg)](https://www.gnu.org/software/bash/)

A comprehensive, one-click installation script that transforms your Android device into a powerful development environment using Termux. This script automates the installation of essential development tools, libraries, and frameworks required for modern Python development, web scraping, machine learning, and multimedia processing.

## 🚀 Features

### Core Development Tools
- **Python 3.x** with complete development environment
- **Node.js** for JavaScript development and tooling
- **Git** for version control and collaboration
- **Clang, Make, CMake, Ninja** for compilation and build automation
- **Rust** programming language with Cargo package manager

### Comprehensive Library Collection
- **Network Libraries**: requests, httpx, httpcore, websockets, aiohttp for robust web communication
- **Web Scraping**: BeautifulSoup4, lxml, html5lib, Selenium for data extraction
- **Cryptography**: cryptography, pycryptodome for secure operations
- **Database Connectivity**: mysql-connector-python, PyMySQL for database integration
- **Web Frameworks**: Flask, Django for web application development
- **Machine Learning**: NLTK for natural language processing
- **Multimedia Processing**: Pillow for image manipulation, MoviePy for video processing
- **UI Enhancement**: rich, pystyle for beautiful terminal interfaces

### System Integration
- **Storage Access**: Automatic Termux storage permission setup
- **Build Dependencies**: Complete toolchain for compiling Python packages
- **Graphics Libraries**: JPEG, PNG, WebP, TIFF support with FreeType and LittleCMS
- **Translation Services**: Google Translate API integration
- **Text-to-Speech**: Google Text-to-Speech capabilities

## 📋 Prerequisites

Before running this script, ensure you have the following requirements met:

- **Android Device** running Android 7.0 (API level 24) or higher
- **Termux Application** installed from F-Droid or Google Play Store
- **Storage Permission** granted to Termux application
- **Stable Internet Connection** for downloading packages and dependencies
- **Minimum 2GB Free Storage** for complete installation


### How To Clone It
```sh
git clone https://github.com/PhuDev-2010/basic-environment-setup.git
```

## ⚠️ Notes

- You can clone or paste the code directly to setup the environment.
- Full download time may take longer than 20 minutes.
- May not be compatible with some devices


### Shell Code
```sh
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
```

## How To Check If A Library Is Installed
```sh
python --version
node -v
pip show <library-name>
```

## How to Check Downloaded Libraries
```sh
pip list
```

## Source Bot Zalo (Unofficial)
- **Github:** [zjr_api](https://github.com/PhuDev-2010/zjr_api)

## 📞 Contact

If you need support or comments, please contact us via:

- **Zalo:** 0816262451  
- **Facebook:** [Lâm Minh Phú](https://www.facebook.com/mphudev)  
- **GitHub:** [PhuDev-2020](https://github.com/PhuDev-2020)  
- **Telegram:** [Phú Coder](https://t.me/phucoder)
- **Email (optional):** zbllf2lollpll@gmail.com 

**Thanks For Watching**