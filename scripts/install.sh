#!/bin/bash

# Telegram System Monitor - Installation Script

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

log_info() { echo -e "${BLUE}[INFO]${NC} $1"; }
log_success() { echo -e "${GREEN}[SUCCESS]${NC} $1"; }
log_warning() { echo -e "${YELLOW}[WARNING]${NC} $1"; }

log_info "Starting installation..."

# Install Python and pip
sudo apt update
sudo apt install -y python3 python3-pip
pip3 install requests

# Install bot script
sudo mkdir -p /usr/local/bin
sudo cp scripts/telegram_bot_safe.py /usr/local/bin/
sudo chmod +x /usr/local/bin/telegram_bot_safe.py

# Install systemd service
sudo cp systemd/telegram-bot.service /etc/systemd/system/

# Copy config example
cp config/telegram_bot_config.example ~/.telegram_bot_config

# Enable service
sudo systemctl daemon-reload
sudo systemctl enable telegram-bot.service

log_success "Installation completed!"
echo ""
log_warning "Edit ~/.telegram_bot_config with your BOT_TOKEN and CHAT_ID"
log_info "Then run: sudo systemctl start telegram-bot.service"
