#!/bin/bash

# Update and install dependencies
sudo apt update
sudo apt install -y wget curl git build-essential

# Install Go (Golang)
wget https://golang.org/dl/go1.21.3.linux-amd64.tar.gz
sudo tar -C /usr/local -xvzf go1.21.3.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
source ~/.bashrc
go version

# Install tools

# Assetfinder
go install github.com/assetfinder/assetfinder@latest

# Gospider
go install github.com/jaeles-project/gospider@latest

# Httpx
go install github.com/projectdiscovery/httpx/cmd/httpx@latest

# Katana
go install github.com/projectdiscovery/katana/cmd/katana@latest

# Nuclei
go install github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest

# Subfinder
go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

# Subzy
git clone https://github.com/subzy/subzy.git
cd subzy
chmod +x install.sh
./install.sh

# Waybackurls
go install github.com/tomnomnom/waybackurls@latest

echo "All tools have been installed successfully!"
