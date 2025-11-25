# Telegram System Monitor 🤖

[![Python](https://img.shields.io/badge/Python-3.6+-blue.svg)](https://python.org)
[![Telegram](https://img.shields.io/badge/Telegram-Bot-blue.svg)](https://core.telegram.org/bots)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Linux-lightgrey.svg)](https://debian.org)

Complete system monitoring with Telegram bot. Get real-time notifications about your system status.

## ✨ Features

- 🖥️ **System Status** - CPU, memory, disk, temperature
- 📱 **Running Processes** - applications and services
- 🌐 **Network Statistics** - connections and interfaces
- 🔌 **USB Monitoring** - device connection/disconnection alerts
- 🔋 **Battery Alerts** - low battery warnings
- 🔄 **Update Notifications** - available package updates
- 🔒 **Safe Mode** - works without sudo privileges

## 🚀 Quick Start

### 1. Create Telegram Bot
Message `@BotFather` on Telegram and use `/newbot` command

### 2. Get Your Chat ID
Message `@userinfobot` on Telegram

### 3. Installation
```bash
git clone https://github.com/petrsrcv/telegram-system-monitor.git
cd telegram-system-monitor

chmod +x scripts/install.sh
./scripts/install.sh

# Edit configuration
nano ~/.telegram_bot_config

# Start the bot
sudo systemctl daemon-reload
sudo systemctl enable telegram-bot.service
sudo systemctl start telegram-bot.service
