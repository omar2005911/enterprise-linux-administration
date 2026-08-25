# Enterprise Linux Administration & Automation

## Project Documentation

---

# 1. Project Overview

This project is a hands-on Linux administration and operations environment designed to simulate a small enterprise infrastructure.

The project combines Windows Server, RHEL Linux, and Ubuntu Linux and covers infrastructure configuration, domain integration, web services, Linux administration, security, automation, monitoring, logging, backup, restore, and scheduled operations.

The project follows a practical administration lifecycle:

Infrastructure → Domain Integration → Web Services → Linux Administration → Security → Automation → Monitoring → Backup → Restore → Operations

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
- Understand and manage SELinux.
- Monitor Linux services and web availability.
- Analyze system and web logs.
- Automate administrative operations using Bash.
- Create and test web backups.
- Automate backups using Cron.
- Apply practical troubleshooting techniques.

---

# 3. Project Environment

The project environment consists of:

### Windows Server

Provides:

- Active Directory Domain Services (AD DS)
- DNS
- Domain users
- Centralized authentication
- Centralized identity management

### RHEL Linux Server

Provides:

- Apache HTTP Server
- Linux administration environment
- firewalld
- SELinux
- SSH
- Bash automation
- Monitoring
- Backup
- Log analysis

### Ubuntu Linux Server

Provides:

- Nginx Web Server
- Linux administration environment
- UFW firewall
- SSH
- Web service testing

---

# 4. Project Architecture

The infrastructure follows a centralized enterprise-style architecture.

Windows Server provides centralized identity and DNS services, while RHEL and Ubuntu provide Linux-based application and web services.

The architecture can be summarized as:

```text
                    Windows Server
                 Active Directory + DNS
                         |
              -------------------------
              |                       |
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
