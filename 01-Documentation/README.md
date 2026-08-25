# Enterprise Linux Administration & Automation

## Project Documentation

---

# 1. Project Overview

This project is a hands-on Linux administration and operations environment designed to simulate a small enterprise infrastructure.

The project combines:

- Windows Server
- RHEL Linux
- Ubuntu Linux
- Active Directory
- DNS
- Apache
- Nginx
- Linux security
- Bash automation
- Monitoring
- Log analysis
- Backup and restore
- Cron scheduling

The project follows a practical administration lifecycle:

Infrastructure → Domain Integration → Web Services → Linux Administration → Security → Automation → Monitoring → Backup → Operations

---

# 2. Project Architecture

The environment consists of:

### Windows Server

Provides:

- Active Directory Domain Services (AD DS)
- DNS
- Domain users
- Centralized authentication

### RHEL Linux Server

Provides:

- Apache HTTP Server
- Linux administration environment
- firewalld
- SELinux
- Bash automation
- Monitoring
- Backup
- Log analysis

### Ubuntu Linux Server

Provides:

- Nginx Web Server
- Linux administration environment
- UFW firewall
- Web service testing

---

# 3. Task 1 — Infrastructure & Domain Integration

## Objective

Integrate Linux servers with a centralized Windows Server Active Directory and DNS environment.

---

## 3.1 Windows Server — Active Directory

Windows Server was configured to provide centralized identity management using:

- Active Directory Domain Services
- DNS
- Domain users
- Centralized authentication

The domain environment provides a central identity source for the Linux servers.

---

## 3.2 DNS Configuration

DNS is a fundamental part of the domain environment.

The Linux servers were configured to use the Active Directory DNS server.

DNS functionality was tested using:

- Forward DNS resolution
- Reverse DNS resolution
- Hostname resolution

Correct DNS configuration is required before joining Linux systems to the Active Directory domain.

---

## 3.3 RHEL Domain Integration

The RHEL server was integrated with the Windows Active Directory domain.

The integration process involved:

- DNS configuration
- realmd
- SSSD
- adcli
- Kerberos
- Domain join
- Domain authentication

The RHEL server domain membership was verified after the join operation.

---

## 3.4 Ubuntu Domain Integration

The Ubuntu Linux server was prepared for integration with the centralized domain environment.

The same DNS and identity architecture was used to provide centralized authentication.

---

## 3.5 Domain Users

Domain users were tested on the Linux environment.

Administrative privileges were configured for authorized users through sudo.

This allows centralized users to authenticate to Linux systems while maintaining controlled administrative access.

---

# 4. Task 2 — Web Infrastructure

## Objective

Deploy and configure web services on both RHEL and Ubuntu Linux servers.

The project uses two different Linux distributions and two different web server technologies.

---

# 4.1 RHEL — Apache Web Server

The RHEL server was configured as an Apache HTTP Server.

Apache was installed using the `httpd` package.

The service was managed using systemd.

Example:

```bash
systemctl enable --now httpd
