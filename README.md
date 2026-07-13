# Linux Health Monitor

A modular Bash application that monitors essential Linux system resources and generates readable health reports.


## Overview

Linux Health Monitor is a command-line application written entirely in **Bash**. It collects information about the current system and presents it in a clean, human-readable format.

The project was built as a learning exercise to strengthen Linux system administration, Bash scripting, and software organization skills commonly used in DevOps environments.


## Features

* Modular project structure
* CPU information

  * CPU core count
  * System architecture
  * Load average
* Memory information

  * Total memory
  * Used memory
  * Free memory
  * Available memory
* Disk usage monitoring

  * Total disk space
  * Used space
  * Available space
  * Configurable warning threshold
* Service status monitoring

  * Monitor multiple systemd services
  * Easily configurable through `config.sh`
* Report generation

  * Display report in the terminal
  * Save timestamped reports using `--save`

---


## Project Structure

```text
linux-health-monitor/
├── health.sh
├── config.sh
├── README.md
├── LICENSE
├── .gitignore
├── lib/
│   ├── utils.sh
│   ├── cpu.sh
│   ├── memory.sh
│   ├── disk.sh
│   └── services.sh
├── reports/
│   └── .gitkeep
└── .github/
    └── workflows/
        └── shellcheck.yml
```


## Requirements

* Linux
* Bash 5.x or newer
* systemd
* GNU coreutils


## Installation

Clone the repository:

```bash
git clone https://github.com/MostafaBabaei4/linux-health-monitor.git
```

Enter the project directory:

```bash
cd linux-health-monitor
```

Make the main script executable:

```bash
chmod +x health.sh
```


## Usage

Display the system health report:

```bash
./health.sh
```

Display the report and save it to the `reports/` directory:

```bash
./health.sh --save
```

Generated reports are stored as timestamped log files.


## Example Output

```text
==========================================
        Linux Health Monitor
==========================================

Generated    : 2026-07-13 12:02:22
Hostname     : fedora
User         : root
Kernel       : 7.0.10-101.fc43.x86_64

-----------------------------------------
CPU Information
-----------------------------------------

CPU Cores       : 2
Architecture    : x86_64
Load Average    :  0.71, 0.83, 0.70

-----------------------------------------
Memory Information
-----------------------------------------

Total Memory       : 2.8Gi
Used Memory        : 1.2Gi
Free Memory        : 1.0Gi
Available Memory   : 1.7Gi

-----------------------------------------
Disk Information
-----------------------------------------

Total Disk      : 48G
Used Disk       : 19G
Available Disk  : 30G
Disk Usage      : 40%

<< Disk usage is healthy >>

-----------------------------------------
Services
-----------------------------------------

sshd               : Running
crond              : Running
docker             : Running
NetworkManager     : Running

Report saved to: reports/health-2026-07-13_12-02-22.log

```


## Configuration

The application can be customized through `config.sh`.

Example:

```bash
SERVICES=(
    "sshd"
    "crond"
    "docker"
    "NetworkManager"
)

DISK_WARNING_THRESHOLD=80
```

This allows users to monitor different services and choose their own disk usage warning threshold without modifying the application logic.


## Technologies Used

* Bash
* Linux
* Git
* GitHub Actions
* ShellCheck


## Concepts Practiced

This project demonstrates practical experience with:

* Modular Bash scripting
* Bash functions
* Local variables
* Arrays
* Loops
* Conditional statements
* Parameter expansion
* Command substitution
* Command-line arguments
* Exit statuses
* Parsing command output with `awk`
* Configuration management
* Report generation
* Git version control
* Continuous code quality checks with ShellCheck


## License

This project is licensed under the MIT License.

