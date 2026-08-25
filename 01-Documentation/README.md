# Enterprise Linux Administration & Automation

## Project Documentation

---

# 1. Project Overview

[الجزء اللي كتبته بالفعل]

---

# 2. Project Objectives

[الجزء اللي كتبته بالفعل]

---

# 3. Project Environment

[Windows Server / RHEL / Ubuntu]

---

# 4. Project Architecture

[Architecture diagram]

---

# 5. Task 1 — Infrastructure & Domain Integration

## 5.1 Windows Server Configuration

- Active Directory Domain Services
- DNS Server
- Forward Lookup Zone
- Reverse Lookup Zone
- Domain Users

## 5.2 Linux Network & DNS Configuration

- Static IP
- Hostname
- DNS configuration
- Connectivity testing

## 5.3 Linux Domain Integration

- realmd
- SSSD
- adcli
- Kerberos
- RHEL domain join
- Ubuntu domain join

## 5.4 Domain Authentication

- Domain users
- Login testing
- Sudo access for domain users

---

# 6. Task 2 — Web Infrastructure

## 6.1 Apache Web Server — RHEL

- Apache installation
- Service configuration
- Web page deployment
- HTTP/HTTPS
- Firewall configuration

## 6.2 Nginx Web Server — Ubuntu

- Nginx installation
- Server Block configuration
- Web page deployment
- HTTP/HTTPS
- UFW configuration

## 6.3 Web Connectivity Testing

- curl
- Browser testing
- Service status
- Port verification

---

# 7. Task 3 — Linux Administration & Automation

## 7.1 Linux Users & Groups

## 7.2 Permissions & Ownership

## 7.3 ACL

## 7.4 Sudo

## 7.5 SSH

## 7.6 systemd & Services

## 7.7 Package Management

## 7.8 Networking & DNS

## 7.9 Bash Scripting

## 7.10 Service Monitoring

[شرح الـservice-monitor.sh]

Script:

`../03-Scripts/service-monitor.sh`

---

# 8. Task 4 — Security, Monitoring, Logging & Backup

## 8.1 Firewall Security

- firewalld
- UFW
- Allowed services
- Allowed ports
- Unwanted traffic

## 8.2 SELinux

- SELinux modes
- Security contexts
- chcon
- Verification

## 8.3 System Monitoring

- Service monitoring
- Web availability
- systemctl
- Process and resource inspection

## 8.4 Log Management

- journalctl
- System logs
- Authentication logs
- Apache logs
- Nginx logs

## 8.5 Backup

- Web content backup
- Archive and compression
- Backup verification

## 8.6 Restore

- Restore procedure
- Restore verification

## 8.7 Cron Automation

- Cron jobs
- Scheduled backups
- Job verification

---

# 9. Troubleshooting

Document the main problems encountered during the project and how they were resolved.

Examples:

- DNS resolution problems
- Domain join issues
- Repository problems
- Firewall configuration issues
- SELinux permission issues
- Service failures
- Web server connectivity problems

---

# 10. Verification & Testing

The project was verified through:

- Service status checks
- DNS resolution tests
- Domain authentication tests
- HTTP/HTTPS connectivity tests
- Firewall verification
- SELinux verification
- Log inspection
- Backup and restore testing
- Bash script execution

---

# 11. Project Results

The project successfully demonstrated the deployment and administration of an enterprise-style Linux environment integrated with Windows Active Directory.

The implemented environment provides:

- Centralized identity and authentication.
- Linux web services using Apache and Nginx.
- Linux administration and access control.
- Firewall and SELinux security.
- Monitoring and troubleshooting.
- Bash-based automation.
- Logging and operational visibility.
- Backup, restore, and scheduled operations.

---

# 12. Skills Demonstrated

- Linux System Administration
- Red Hat Enterprise Linux
- Ubuntu Linux
- Windows Server
- Active Directory
- DNS
- Apache
- Nginx
- SSH
- Sudo
- Permissions & ACL
- firewalld
- UFW
- SELinux
- Bash Scripting
- systemd
- Log Management
- Cron
- Backup & Restore
- Linux Troubleshooting
