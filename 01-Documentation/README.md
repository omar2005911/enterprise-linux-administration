# Enterprise Linux Administration & Automation
# Project Documentation

## Project Overview

This project is a hands-on Linux administration and operations environment designed to simulate a small enterprise infrastructure.

The environment combines Windows Server, RHEL, and Ubuntu Linux servers and covers infrastructure configuration, domain integration, web services, Linux administration, security, automation, monitoring, logging, backup, and scheduled operations.

---

# Project Architecture

The project consists of:

- Windows Server providing Active Directory Domain Services and DNS.
- RHEL Linux server running Apache HTTP Server.
- Ubuntu Linux server running Nginx.
- Linux administration and security controls.
- Bash automation scripts.
- Monitoring and log analysis.
- Automated web backups using Cron.

The project follows a practical administration lifecycle:

Infrastructure → Configuration → Security → Web Services → Monitoring → Automation → Backup → Restore

---

# Task 1 — Infrastructure & Domain Integration

## Objective

Integrate Linux servers with a centralized Windows Server Active Directory and DNS environment.

## Windows Server

The Windows Server environment was configured to provide:

- Active Directory Domain Services (AD DS)
- DNS
- Domain users
- Centralized identity management

## DNS Configuration

Linux servers were configured to use the Active Directory DNS server.

DNS functionality was tested through:

- Forward DNS resolution
- Reverse DNS resolution
- Hostname resolution

## RHEL Domain Integration

The RHEL server was integrated with the Windows Active Directory domain.

The domain integration process involved:

- DNS configuration
- Required domain integration packages
- realmd
- SSSD
- adcli
- Kerberos
- Domain join
- Domain user authentication

Domain membership was verified after joining the server.

## Ubuntu Domain Integration

The Ubuntu Linux server was also prepared for integration with the centralized domain environment.

The same identity and DNS architecture was used to provide centralized authentication.

## Domain Users

Domain users were tested on the Linux environment.

Administrative privileges were configured for authorized users through sudo.

---

# Task 2 — Web Infrastructure

## Objective

Deploy and configure web servers on both RHEL and Ubuntu Linux servers.

The project uses two different Linux distributions and two different web server technologies.

---

## RHEL — Apache Web Server

The RHEL server was configured as an Apache HTTP Server.

### Apache Configuration

Apache was installed and configured using the `httpd` service.

The service was enabled and started using systemd.

Example:

```bash
systemctl enable --now httpd
