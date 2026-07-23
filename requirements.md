# Requirements

## Smart Linux Server Manager

This document lists the software, packages, permissions, and system requirements needed to run the **Smart Linux Server Manager** successfully.

---

# 1. Operating System

The project is designed and tested on Linux distributions.

### Supported Distributions

* Ubuntu 22.04 LTS or later *(Recommended)*
* Debian 12 or later
* Linux Mint 21 or later

> Other Linux distributions may work but have not been officially tested.

---

# 2. Shell

* Bash 5.0 or later

Check your Bash version:

```bash
bash --version
```

---

# 3. Required Linux Commands

The following commands are used throughout the project.

| Command    | Purpose                      |
| ---------- | ---------------------------- |
| bash       | Execute shell scripts        |
| mkdir      | Create directories           |
| rm         | Remove files and directories |
| cp         | Copy files                   |
| mv         | Move or rename files         |
| touch      | Create files                 |
| ls         | List files                   |
| find       | Search for files             |
| chmod      | Change file permissions      |
| stat       | Display file information     |
| tar        | Create and extract backups   |
| ps         | View running processes       |
| top        | Monitor CPU usage            |
| free       | View memory usage            |
| df         | Display disk usage           |
| uptime     | Display system uptime        |
| hostname   | Display hostname             |
| who        | List logged-in users         |
| whoami     | Display current user         |
| cut        | Process user information     |
| ping       | Test network connectivity    |
| ip         | Display network information  |
| ss         | View listening ports         |
| traceroute | Trace network route          |
| nslookup   | Perform DNS lookups          |
| nmap       | Scan network ports           |
| docker     | Manage Docker containers     |
| crontab    | Schedule backup tasks        |

---

# 4. Required Packages

Install the required packages on Ubuntu/Debian:

```bash
sudo apt update

sudo apt install bash

sudo apt install tar

sudo apt install cron

sudo apt install dnsutils

sudo apt install traceroute

sudo apt install nmap

sudo apt install docker.io
```

---

# 5. Project Directory Structure

```text
Smart-Linux-Server-Manager/
├── backups/
├── config/
├── cron/
├── docs/
├── logs/
├── reports/
├── sample_output/
├── screenshots/
├── scripts/
├── install.sh
├── uninstall.sh
├── README.md
├── requirements.md
└── LICENSE
```

---

# 6. Permissions

Grant execute permission before running the project.

```bash
chmod +x install.sh
chmod +x uninstall.sh
find scripts -type f -name "*.sh" -exec chmod +x {} \;
```

---

# 7. Installation

Run the installer:

```bash
./install.sh
```

---

# 8. Running the Project

Start the application:

```bash
bash scripts/main.sh
```

---

# 9. Features Covered

The project contains the following modules:

* Authentication
* File Manager
* Backup Manager
* Log Analyzer
* User Manager
* System Monitor
* Network Toolkit
* Docker Manager
* Report Generator

---

# 10. Recommended Hardware

| Component | Minimum   | Recommended                      |
| --------- | --------- | -------------------------------- |
| CPU       | Dual Core | Quad Core or better              |
| RAM       | 2 GB      | 4 GB or more                     |
| Storage   | 500 MB    | 2 GB or more                     |
| Internet  | Optional  | Required for networking features |

---

# 11. Development Environment

The project was developed using:

* Ubuntu Linux
* Bash Shell
* Git
* GitHub
* Visual Studio Code / Nano

---

# 12. Notes

* Docker-related features require Docker to be installed.
* Port scanning requires **Nmap**.
* DNS lookup requires **dnsutils**.
* Traceroute requires the **traceroute** package.
* Some operations (such as creating or modifying system users) may require elevated privileges when executed.

---

# 13. Version

**Project:** Smart Linux Server Manager

**Version:** 1.0

**License:** MIT License
