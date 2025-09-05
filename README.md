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
## 🛠 Installation

### Quick Start

Execute the following command in your Termux terminal to download and run the setup script:

```bash
curl -L https://raw.githubusercontent.com/yourusername/termux-dev-setup/main/setup.sh | bash
```

### Manual Installation

If you prefer to review the script before execution, download it first:

```bash
# Download the setup script
curl -L -O https://raw.githubusercontent.com/yourusername/termux-dev-setup/main/setup.sh

# Make the script executable
chmod +x setup.sh

# Execute the setup script
./setup.sh
```

### Alternative Method

Clone this repository and run the setup script locally:

```bash
# Clone the repository
git clone https://github.com/yourusername/termux-dev-setup.git

# Navigate to the project directory
cd termux-dev-setup

# Execute the setup script
bash setup.sh
```

## 📊 Installation Process

The setup script follows a systematic installation approach organized into the following phases:

### Phase 1: System Preparation
The script initializes storage access permissions and updates the package repository to ensure access to the latest package versions.

### Phase 2: Core Tools Installation
Essential development tools including Python, Node.js, Git, and compilation toolchains are installed to provide the foundation for development activities.

### Phase 3: Build Environment Setup
Build automation tools, libraries, and dependencies required for compiling Python packages and native extensions are configured.

### Phase 4: Python Environment Configuration
Python build dependencies, package management tools, and core libraries are installed with proper version constraints to ensure compatibility.

### Phase 5: Specialized Libraries Installation
Domain-specific libraries for web development, data processing, multimedia handling, and machine learning are installed in dependency order.

## 🔧 Usage Examples

### Web Scraping Project
```python
import requests
from bs4 import BeautifulSoup
import lxml

# Your web scraping code here
response = requests.get('https://example.com')
soup = BeautifulSoup(response.content, 'lxml')
```

### Image Processing Application
```python
from PIL import Image
import numpy as np

# Your image processing code here
image = Image.open('sample.jpg')
image_array = np.array(image)
```

### Web Application Development
```python
from flask import Flask, render_template

# Your Flask application code here
app = Flask(__name__)

@app.route('/')
def home():
    return render_template('index.html')
```

## 📁 Package Structure

The installation script organizes packages into logical categories for maintainability and clarity:

**System Tools**: Core development utilities and compilers required for building and managing projects.

**Network Stack**: Comprehensive HTTP client libraries supporting both synchronous and asynchronous operations.

**Data Processing**: Libraries for parsing, manipulating, and extracting information from various data formats.

**Security Components**: Cryptographic libraries providing encryption, hashing, and secure communication capabilities.

**Database Integration**: Database connectivity solutions supporting various database management systems.

**Framework Collection**: Web development frameworks for building scalable applications and services.

**Multimedia Support**: Image, video, and audio processing libraries for multimedia applications.

## 🔍 Troubleshooting

### Common Installation Issues

**Package Conflicts**: If you encounter package conflicts, clear the pip cache using `pip cache purge` and restart the installation process.

**Compilation Errors**: Ensure all build dependencies are properly installed by running the script again, as some packages may require multiple installation attempts.

**Permission Issues**: Verify that Termux has storage permissions granted in your Android system settings.

**Network Timeouts**: If downloads fail due to network issues, retry the installation process as the script handles incremental installations.

### Performance Optimization

For optimal performance on devices with limited resources, consider installing packages individually if the complete installation process consumes excessive memory or storage space.

## 🤝 Contributing

Contributions to improve this setup script are welcome and encouraged. To contribute effectively:

Fork this repository and create a feature branch for your improvements. Test your changes thoroughly on different Android devices and Termux versions. Submit a pull request with a detailed description of your modifications and their benefits.

When contributing, ensure that new packages are added to appropriate sections with proper version constraints where necessary. Update the README documentation to reflect any new features or requirements introduced by your changes.

## 📄 License

This project is distributed under the MIT License, providing flexibility for both personal and commercial use. See the LICENSE file for complete license terms and conditions.

## 📞 Support

For assistance, bug reports, or feature requests, please create an issue in the GitHub repository. When reporting issues, include your Android version, Termux version, and any relevant error messages to facilitate troubleshooting.

---

**Note**: This script is designed for educational and development purposes. Always review scripts before execution and ensure you understand the packages being installed on your system.