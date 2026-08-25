# Enterprise Linux Administration & Automation

## Project Documentation

---

# 1. Project Overview

This project is a hands-on Enterprise Linux Administration and Automation environment designed to simulate a small enterprise infrastructure.

The project integrates Windows Server, RHEL, and Ubuntu Linux systems to demonstrate practical skills in Linux administration, domain integration, web services, security, monitoring, automation, logging, backup, and troubleshooting.

The project follows a complete operational lifecycle:

**Infrastructure → Domain Integration → Web Services → Linux Administration → Security → Monitoring → Automation → Logging → Backup & Restore**
# 2. Project Objectives

The main objectives of this project are:

* Build and administer RHEL and Ubuntu Linux servers in an enterprise-style environment.
* Integrate Linux systems with Windows Active Directory.
* Configure DNS and centralized authentication.
* Deploy and manage Apache and Nginx web servers.
* Manage Linux users, groups, permissions, and ACLs.
* Configure SSH, sudo, and systemd services.
* Configure and manage firewalls using firewalld and UFW.
* Understand and manage SELinux security controls.
* Monitor Linux services and system activity.
* Analyze system and web server logs.
* Develop Bash scripts for Linux administration and automation.
* Perform backup and restore operations.
* Schedule automated tasks using Cron.
* Apply practical Linux troubleshooting and verification techniques.
# 3. Project Environment

The project environment consists of three main systems working together to provide centralized identity, DNS, web services, and Linux administration capabilities.

## Windows Server

The Windows Server system provides the centralized infrastructure services required by the Linux servers.

### Main Services

* Active Directory Domain Services (AD DS)
* DNS Server
* Domain Users and Groups
* Centralized Authentication
* Identity Management

## RHEL Linux Server

The RHEL server is used as the primary Linux administration and web server platform.

### Main Services and Roles

* Apache HTTP Server
* SSH
* firewalld
* SELinux
* Linux user and group management
* Bash automation
* Service monitoring
* Log management
* Backup and restore

## Ubuntu Linux Server

The Ubuntu server is used as a secondary Linux platform and web server.

### Main Services and Roles

* Nginx Web Server
* SSH
* UFW Firewall
* Linux administration
* Web service testing
* Active Directory integration
# 4. Project Architecture

The project follows a centralized enterprise-style architecture in which Windows Server provides identity and DNS services, while RHEL and Ubuntu provide Linux-based web and administration services.

```text
                         Windows Server
                    Active Directory + DNS
                              |
                 ---------------------------
                 |                         |
            RHEL Linux                 Ubuntu Linux
                 |                         |
              Apache                    Nginx
                 |                         |
             firewalld                    UFW
                 |
              SELinux
                 |
        Bash Automation & Monitoring
                 |
          Logs / Backup / Restore
```

### Architecture Components

| System         | Primary Role                                                               |
| -------------- | -------------------------------------------------------------------------- |
| Windows Server | Active Directory, DNS, and centralized identity                            |
| RHEL Linux     | Apache, Linux administration, security, automation, monitoring, and backup |
| Ubuntu Linux   | Nginx, Linux administration, firewall, and web services                    |

The architecture is designed to demonstrate how Linux servers can operate within a centralized Windows-based enterprise environment while maintaining independent Linux security, administration, and automation capabilities.
# 5. Task 1 — Infrastructure & Domain Integration

## 5.1 Task Overview

This task focuses on building the core infrastructure required for the Linux environment and integrating RHEL and Ubuntu Linux servers with a Windows Server Active Directory domain.

The task covers:

* Windows Server Active Directory Domain Services (AD DS).
* DNS configuration and name resolution.
* Static IP and hostname configuration.
* Linux DNS configuration.
* Active Directory domain integration.
* Kerberos authentication.
* SSSD configuration.
* Domain user authentication.
* Sudo access for authorized domain users.

The goal is to provide centralized identity and authentication while allowing Linux servers to operate as members of the enterprise domain.
## 5.2 Windows Server — Active Directory & DNS Configuration

Windows Server was configured as the centralized identity and DNS server for the Linux environment.

### Active Directory Domain Services

Active Directory Domain Services (AD DS) was configured to provide centralized identity management and authentication for the Linux servers.

The domain environment provides:

* Centralized user and group management.
* Domain-based authentication.
* Identity management for Linux servers.
* Centralized access control.

### DNS Configuration

DNS was configured on the Windows Server to provide name resolution for the domain environment.

The DNS configuration includes:

* Forward Lookup Zone for resolving hostnames to IP addresses.
* Reverse Lookup Zone for resolving IP addresses to hostnames.
* DNS records for the domain infrastructure.
* Name resolution between Windows and Linux systems.

### Verification

DNS and domain connectivity were verified from the Linux servers using network and DNS troubleshooting commands.

Examples:

```bash
ping <domain-name>
nslookup <domain-name>
```

Successful name resolution confirmed that the Linux servers could communicate with the domain infrastructure.
## 5.3 Linux Network & DNS Configuration

Before integrating the Linux servers with Active Directory, the network and DNS configuration were verified to ensure reliable communication with the domain controller.

### Network Configuration

The Linux servers were configured with:

* Static IP addressing.
* Correct hostname configuration.
* Proper network connectivity.
* Windows Server as the DNS server.

### Hostname Configuration

The hostname was configured correctly on each Linux server to provide a consistent identity within the domain environment.

Example:

```bash
hostnamectl set-hostname <hostname>
```

The configuration was verified using:

```bash
hostnamectl
```

### DNS Configuration

The Linux servers were configured to use the Windows Server DNS service for domain name resolution.

DNS configuration was verified using:

```bash
nslookup <domain-name>
```

and:

```bash
ping <domain-name>
```

Successful DNS resolution and network connectivity confirmed that the Linux servers could communicate with the Active Directory environment.

### Verification

The following checks were performed before proceeding with the domain integration:

* IP address verification.
* Hostname verification.
* DNS server verification.
* Domain name resolution.
* Connectivity with the Windows Server.
## 5.4 RHEL Domain Integration

The RHEL server was integrated with the Windows Server Active Directory domain to enable centralized authentication and identity management.

### Required Packages

The required packages for Active Directory integration were installed:

```bash
dnf install realmd sssd adcli krb5-workstation samba-common-tools
```

### Domain Discovery

The domain environment was discovered using:

```bash
realm discover <domain-name>
```

The command was used to verify that the RHEL server could locate and communicate with the Active Directory domain.

### Domain Join

After successful domain discovery, the RHEL server was joined to the domain:

```bash
realm join <domain-name> -U <domain-admin>
```

The domain administrator credentials were provided when prompted.

### Domain Membership Verification

The domain membership was verified using:

```bash
realm list
```

The output was checked to confirm that the RHEL server was successfully registered as a member of the Active Directory domain.

### SSSD Configuration

SSSD was used as the identity and authentication service for domain users.

The service was enabled and started:

```bash
systemctl enable --now sssd
```

Its status was verified using:

```bash
systemctl status sssd
```

### Authentication Verification

Domain users were verified from the RHEL server using:

```bash
id <domain-user>
```

Successful user resolution confirmed that the RHEL server could retrieve identity information from Active Directory through SSSD.

### Result

The RHEL server was successfully integrated with the Active Directory domain, allowing domain users to be recognized and authenticated on the Linux system.
## 5.5 Ubuntu Domain Integration

The Ubuntu server was integrated with the Windows Server Active Directory domain to provide centralized identity and authentication.

### Required Packages

The required packages for Active Directory integration were installed:

```bash
apt install realmd sssd sssd-tools adcli krb5-user samba-common-bin
```

### Domain Discovery

The Active Directory domain was discovered using:

```bash
realm discover <domain-name>
```

Successful discovery confirmed that the Ubuntu server could communicate with the domain environment.

### Domain Join

The Ubuntu server was joined to the Active Directory domain using:

```bash
realm join <domain-name> -U <domain-admin>
```

The domain administrator credentials were provided when prompted.

### Domain Membership Verification

The domain membership was verified using:

```bash
realm list
```

The output was checked to confirm that the Ubuntu server was successfully registered with the Active Directory domain.

### SSSD Configuration

SSSD was used to provide identity and authentication services for domain users.

The service was enabled and started:

```bash
systemctl enable --now sssd
```

The service status was verified using:

```bash
systemctl status sssd
```

### Domain User Verification

Domain users were tested using:

```bash
id <domain-user>
```

Successful user resolution confirmed that Ubuntu could retrieve domain user information through SSSD.

### Result

The Ubuntu server was successfully integrated with the Active Directory domain, allowing centralized domain identity and authentication to be used on the Linux server.
## 5.6 Domain Users & Sudo Access

After joining the Linux servers to the Active Directory domain, domain users were configured and tested to verify centralized authentication and controlled administrative access.

### Domain User Resolution

Domain users were verified from the Linux servers using:

```bash
id <domain-user>
```

The command was used to confirm that the Linux system could retrieve the user's identity information from Active Directory.

### Domain User Login

Domain authentication was tested by logging in with a domain account.

The successful login confirmed that:

* The Linux server could communicate with Active Directory.
* SSSD was resolving domain identities correctly.
* Domain authentication was functioning properly.

### Sudo Access

Administrative access was configured for authorized domain users.

Sudo permissions allow designated domain users to execute administrative commands without using the local root account.

The configuration was verified using:

```bash
sudo -l
```

### Verification

The following tests were performed:

* Domain user resolution.
* Domain user authentication.
* Sudo permission verification.
* Execution of authorized administrative commands.

### Result

The Linux servers successfully used centralized Active Directory identities while maintaining controlled administrative access through sudo.
## 5.6 Domain Users & Sudo Access

After joining the Linux servers to the Active Directory domain, domain users were configured and tested to verify centralized authentication and controlled administrative access.

### Domain User Resolution

Domain users were verified from the Linux servers using:

```bash
id <domain-user>
```

The command was used to confirm that the Linux system could retrieve the user's identity information from Active Directory.

### Domain User Login

Domain authentication was tested by logging in with a domain account.

The successful login confirmed that:

* The Linux server could communicate with Active Directory.
* SSSD was resolving domain identities correctly.
* Domain authentication was functioning properly.

### Sudo Access

Administrative access was configured for authorized domain users.

Sudo permissions allow designated domain users to execute administrative commands without using the local root account.

The configuration was verified using:

```bash
sudo -l
```

### Verification

The following tests were performed:

* Domain user resolution.
* Domain user authentication.
* Sudo permission verification.
* Execution of authorized administrative commands.

### Result

The Linux servers successfully used centralized Active Directory identities while maintaining controlled administrative access through sudo.
## 5.7 Task 1 Verification

The following tests were performed to verify the infrastructure and domain integration:

```bash
hostnamectl
ip addr
nslookup <domain-name>
realm list
id <domain-user>
sudo -l
```

The RHEL and Ubuntu servers successfully communicated with the Active Directory and resolved domain users.
# 6. Task 2 — Web Infrastructure

## 6.1 RHEL Apache

Apache HTTP Server was installed and configured on RHEL.

```bash
dnf install httpd
systemctl enable --now httpd
systemctl status httpd
```

HTTP traffic was allowed through firewalld:

```bash
firewall-cmd --permanent --add-service=http
firewall-cmd --permanent --add-service=https
firewall-cmd --reload
```

Web service verification:

```bash
curl http://localhost
```

## 6.2 Ubuntu Nginx

Nginx was installed and configured on Ubuntu.

```bash
apt install nginx
systemctl enable --now nginx
systemctl status nginx
```

UFW was configured to allow web traffic:

```bash
ufw allow 80/tcp
ufw allow 443/tcp
ufw status
```

Web service verification:

```bash
curl http://localhost
```

## 6.3 Result

Apache and Nginx were successfully deployed and tested on the Linux servers.
# 7. Task 3 — Linux Administration & Automation

## 7.1 Users & Groups

Linux users and groups were created and managed using:

```bash
useradd
usermod
groupadd
```

## 7.2 Permissions & Ownership

File ownership and permissions were managed using:

```bash
chmod
chown
```

## 7.3 ACL

Access Control Lists were configured and verified using:

```bash
setfacl
getfacl
```

## 7.4 SSH

SSH was configured and tested for remote administration.

```bash
systemctl status sshd
ssh <user>@<server-ip>
```

## 7.5 Services & systemd

Linux services were managed using:

```bash
systemctl start
systemctl stop
systemctl restart
systemctl enable
systemctl status
```

## 7.6 Package Management

RHEL packages were managed using `dnf`, while Ubuntu packages were managed using `apt`.

## 7.7 Bash Automation

Bash scripts were developed to automate administration and monitoring tasks.

The scripts are available in:

`../03-Scripts/`

## 7.8 Service Monitoring

A Bash script was created to monitor essential Linux services.

Script:

`../03-Scripts/service-monitor.sh`

The script checks service status and reports whether each service is running correctly.
# 8. Task 4 — Security, Monitoring, Logging & Backup

## 8.1 Firewall

Linux firewall security was configured using:

* firewalld on RHEL
* UFW on Ubuntu

Required services and ports were allowed while unwanted traffic was restricted.

## 8.2 SELinux

SELinux was inspected and configured on RHEL.

Common commands used:

```bash
getenforce
sestatus
chcon
```

## 8.3 Monitoring

Linux services and system activity were monitored using:

```bash
systemctl
journalctl
```

A Bash service monitoring script was also developed.

## 8.4 Log Management

System and service logs were inspected using:

```bash
journalctl
```

Web server logs were also analyzed for troubleshooting and verification.

## 8.5 Backup

Web content was backed up using Linux archive and compression tools.

Backup files were verified after creation.

## 8.6 Restore

Backup data was restored and verified to ensure that the backup process was reliable.

## 8.7 Cron

Cron was used to schedule automated administrative and backup tasks.

## 8.8 Result

Security, monitoring, logging, automation, and backup operations were successfully implemented and tested.
# 9. Troubleshooting

Several configuration and connectivity issues were encountered during the project and resolved through Linux troubleshooting techniques.

Troubleshooting included:

* DNS resolution problems.
* Service configuration issues.
* Firewall restrictions.
* SELinux permissions.
* Web server connectivity.
* Repository and package management issues.

---

# 10. Project Verification

The project was verified through:

* DNS testing.
* Domain authentication.
* Service status checks.
* Web connectivity testing.
* Firewall verification.
* SELinux verification.
* Log analysis.
* Bash script execution.
* Backup and restore testing.

---

# 11. Project Results

The project successfully demonstrated practical Enterprise Linux administration and automation in an environment integrated with Windows Active Directory.

The implemented environment includes centralized authentication, Apache and Nginx web services, Linux security, service monitoring, Bash automation, logging, and backup operations.
