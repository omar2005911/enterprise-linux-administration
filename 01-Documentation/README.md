# Enterprise Linux Administration & Automation

## Project Documentation

---

# 1. Project Overview

This project is a hands-on Linux administration and operations environment designed to simulate a small enterprise infrastructure.

The project combines Windows Server, RHEL Linux, and Ubuntu Linux and covers infrastructure configuration, domain integration, web services, Linux administration, security, automation, monitoring, logging, backup, restore, and scheduled operations.

The project follows this lifecycle:

Infrastructure → Domain Integration → Web Services → Linux Administration → Security → Monitoring → Automation → Logging → Backup & Restore → Operations

---

# 2. Project Objectives

The main objectives of this project are:

- Build and administer Linux servers in an enterprise-style environment.
- Integrate Linux systems with Windows Active Directory.
- Configure centralized DNS and authentication.
- Deploy Apache and Nginx web servers.
- Manage Linux users, groups, permissions, and ACLs.
- Configure SSH and sudo access.
- Configure firewalld and UFW.
- Manage and inspect SELinux.
- Monitor Linux services and web availability.
- Analyze system and web logs.
- Automate administration tasks using Bash.
- Create and test web backups.
- Automate backups using Cron.
- Apply practical Linux troubleshooting techniques.

---

# 3. Project Environment

## Windows Server

Provides:

- Active Directory Domain Services (AD DS)
- DNS
- Domain users
- Centralized authentication
- Centralized identity management

## RHEL Linux Server

Provides:

- Apache HTTP Server
- Linux administration
- firewalld
- SELinux
- SSH
- Bash automation
- Monitoring
- Backup
- Log analysis

## Ubuntu Linux Server

Provides:

- Nginx Web Server
- Linux administration
- UFW firewall
- SSH
- Web service testing

---

# 4. Project Architecture

The infrastructure follows a centralized enterprise-style architecture.

Windows Server provides centralized identity and DNS services, while RHEL and Ubuntu provide Linux-based web and administration services.

```text
                    Windows Server
                 Active Directory + DNS
                         |
              -------------------------
              |                       |
          RHEL Server             Ubuntu Server
              |                       |
           Apache                  Nginx
              |                       |
          firewalld                   UFW
              |                       |
           SELinux                  Linux
              |
        Bash Automation
              |
     Monitoring / Logs / Backup
---

# 6. Task 2 — Web Infrastructure

## Objective

Deploy and configure web services on both RHEL and Ubuntu using Apache and Nginx.

### RHEL — Apache

Configured the RHEL server as an Apache HTTP Server.

Implemented:

- Installed `httpd`
- Configured custom web content
- Enabled and started Apache using systemd
- Configured firewalld for web traffic
- Allowed HTTP port 80
- Allowed HTTPS port 443
- Verified listening ports
- Tested HTTP response using `curl`

Example:

```bash
systemctl enable --now httpd
curl http://localhost
