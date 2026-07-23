# Smart Linux Server Manager

A modular **Bash-based Linux Administration Toolkit** designed to simplify common system administration tasks through an interactive menu-driven interface.

This project demonstrates Linux system administration, shell scripting, automation, and modular software design. It is intended as a learning project and a portfolio showcase for Linux and DevOps fundamentals.

---

# Features

The project is divided into independent modules:

* **Authentication**

  * User authentication before accessing the application.

* **File Manager**

  * Create files
  * Create directories
  * Rename files/directories
  * Copy files
  * Move files
  * Delete files/directories
  * Search files
  * View file information
  * List directory contents

* **Backup Manager**

  * Create compressed backups
  * Restore backups
  * Schedule backups using Cron
  * View backup logs

* **Log Analyzer**

  * View authentication logs
  * View system logs
  * View error logs
  * Open custom log files

* **User Manager**

  * Create users
  * Delete users
  * Change passwords
  * List users
  * Lock and unlock user accounts

* **System Monitor**

  * CPU information
  * Memory usage
  * Disk usage
  * Running processes
  * System uptime

* **Network Toolkit**

  * Ping host
  * Traceroute
  * DNS lookup
  * Port scanning
  * Network interface information

* **Docker Manager**

  * List containers
  * Start containers
  * Stop containers
  * Remove containers
  * List Docker images

* **Report Generator**

  * Generate system reports
  * Generate user reports
  * Generate network reports
  * Generate backup reports

---

# Project Structure

```text
Smart-Linux-Server-Manager/
│
├── backups/
├── config/
├── cron/
├── docs/
├── logs/
├── reports/
├── sample_output/
├── screenshots/
├── scripts/
│   ├── main.sh
│   ├── auth.sh
│   ├── file_manager/
│   ├── backup_manager/
│   ├── log_analyzer/
│   ├── user_manager/
│   ├── system_monitor/
│   ├── network_toolkit/
│   ├── docker_manager/
│   └── report_generator/
│
├── install.sh
├── uninstall.sh
├── requirements.md
├── README.md
└── LICENSE
```

---

# Technologies Used

* Bash Shell Scripting
* Linux
* Git
* GitHub
* Cron
* Docker
* Nmap
* Traceroute
* DNS Utilities

---

# Installation

Clone the repository:

```bash
git clone git@github.com:mahendravarmacyb/Smart-Linux-Server-Manager.git
```

Move into the project directory:

```bash
cd Smart-Linux-Server-Manager
```

Make the installer executable:

```bash
chmod +x install.sh
```

Run the installer:

```bash
./install.sh
```

---

# Running the Project

Launch the application:

```bash
bash scripts/main.sh
```

---

# Requirements

Install the required packages before using all modules:

* Bash
* Tar
* Cron
* DNS Utilities (`dnsutils`)
* Traceroute
* Nmap
* Docker (optional for Docker Manager)

Refer to **requirements.md** for detailed installation instructions.

---

# Screenshots

Store application screenshots inside the `screenshots/` directory.

Example:

```text
screenshots/
├── main_menu.png
├── file_manager.png
├── backup_manager.png
├── network_toolkit.png
└── report_generator.png
```

---

# Sample Output

Sample command outputs can be stored in:

```text
sample_output/
```

This helps users understand the project without executing every module.

---

# Learning Objectives

This project demonstrates practical experience with:

* Linux Administration
* Bash Scripting
* Modular Programming
* File Management
* User Management
* System Monitoring
* Network Diagnostics
* Docker Management
* Automation
* Cron Jobs
* Report Generation

---

# Future Improvements

Possible enhancements include:

* Colored terminal interface
* Configuration management
* Firewall management
* Service management
* Email notifications
* ShellCheck integration
* Unit testing
* Continuous Integration (CI)

---

# Author

**Mahendra Varma Datla**

GitHub: https://github.com/mahendravarmacyb

---

# License

This project is licensed under the **MIT License**.

See the `LICENSE` file for more information.

---

# Version

**Version:** 1.0.0

