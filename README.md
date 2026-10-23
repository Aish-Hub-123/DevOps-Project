# Cloud-Based Linux Server Deployment with GitHub Version Control and Automation

## 1. Project Overview

This project demonstrates how to deploy a website on an AWS EC2 Ubuntu Linux server, configure Apache as a web server, manage source code using GitHub, and automate common server administration tasks using Bash scripts.

The project is part of the IT Vedant DevOps Fundamentals Mini Project.

### Objectives
- Create and configure a custom AWS Virtual Private Cloud (VPC).
- Launch and connect to an Ubuntu EC2 instance.
- Install and configure the Apache web server.
- Host a static HTML website.
- Use Git and GitHub for version control.
- Automate server monitoring, Apache service monitoring, and website backups using Bash scripts.

## 2. AWS Architecture

The project uses the following AWS components:

- **AWS Region:** Asia Pacific (Mumbai) — `ap-south-1`
- **VPC:** `10.0.0.0/16`
- **Public Subnet:** `10.0.1.0/24`
- **Internet Gateway (IGW):** Provides internet connectivity to the VPC when routing and security settings permit.
- **Route Table:** Configured with a default route (`0.0.0.0/0`) to the Internet Gateway.
- **Security Group:** Allows HTTP traffic on port 80 and SSH access on port 22, restricted to the appropriate source IPs.
- **EC2 Instance:** Ubuntu Linux virtual server.
- **Apache:** Serves the project's HTML webpage.
- **GitHub:** Stores the source code and Bash scripts.

### Request Flow

1. A user opens the EC2 public IP address in a web browser.
2. Traffic reaches the VPC through the Internet Gateway.
3. The route table provides the network route, and the Security Group permits HTTP traffic.
4. Apache processes the request and serves `index.html`.
5. The webpage is displayed in the user's browser.

## 3. Installation and Configuration Steps

### Step 1: Create the AWS Network
1. Create a custom VPC.
2. Create a public subnet.
3. Create and attach an Internet Gateway.
4. Configure the route table with a default route to the Internet Gateway.
5. Associate the route table with the public subnet.
6. Create a Security Group with the required inbound rules.

### Step 2: Launch an EC2 Instance
1. Launch an Ubuntu EC2 instance in the public subnet.
2. Configure the key pair for secure SSH access.
3. Assign a public IP address.
4. Allow SSH access from the authorized client IP.

### Step 3: Connect to Ubuntu

```bash
ssh -i "Downloads/DevOps_Proj_Key.pem" ubuntu@43.205.217.164
```


### Step 4: Update Packages and Install Apache

```bash
sudo apt update
sudo apt install apache2 -y
sudo systemctl enable --now apache2
```

### Step 5: Deploy the Website

The default Apache document root is `/var/www/html/`.

Create or edit the webpage:

```bash
sudo vim /var/www/html/index.html
```

Save the HTML content and open the following URL in a browser:

```text
http://43.205.217.164
```

Ensure that the Security Group permits inbound HTTP traffic on port 80.

### Step 6: Install Git and Clone the Repository

```bash
sudo apt install git -y
git clone https://github.com/Aish-Hub-123/DevOps-Project.git
cd DevOps-Project
```

### Step 7: Configure Git

```bash
git config --global user.name "Aish-Hub-123"
git config --global user.email "aishmayekar98@gmail.com"
```

### Step 8: Push Changes to GitHub

```bash
git status
git add .
git commit -m "Update project files"
git push origin main
```

GitHub authentication may require a personal access token or another supported authentication method.

## 4. Commands Used

| Command | Purpose |
|---|---|
| `pwd` | Display the current directory |
| `ls -la` | List files, including hidden files |
| `cd` | Change directory |
| `sudo apt update` | Refresh package information |
| `sudo apt install apache2 -y` | Install Apache |
| `sudo systemctl status apache2` | Check Apache service status |
| `sudo systemctl restart apache2` | Restart Apache |
| `curl http://localhost` | Test the local web server |
| `git clone` | Clone a GitHub repository |
| `git status` | Check Git working-tree status |
| `git add .` | Stage changes |
| `git commit -m "message"` | Create a commit |
| `git push origin main` | Push commits to GitHub |
| `chmod +x script.sh` | Make a script executable |
| `free -h` | Display memory usage |
| `df -h` | Display disk usage |
| `uptime` | Display system uptime |
| `who` | Display logged-in users |
| `ps aux` | Display running processes |
| `journalctl -p warning` | View warning and higher-priority system logs |

## 5. Folder Structure

```text
DevOps-Project/
├── README.md
├── index.html
├── health-check.sh
├── apache-monitor.sh
├── backup.sh
├── log-report.txt
├── Backup/
├── screenshots/
└── documentation/
    └── Project_Report.pdf
```

### File Descriptions

- `README.md` — Project overview and setup documentation.
- `index.html` — Website source code.
- `health-check.sh` — Displays server health information, including CPU, memory, disk, users, processes, and uptime.
- `apache-monitor.sh` — Checks the Apache service and attempts to restart it if it is stopped.
- `backup.sh` — Creates a timestamped compressed backup of the website files.
- `log-report.txt` — Contains the project's log analysis and observations.
- `Backup/` — Stores generated website backup archives.
- `screenshots/` — Stores screenshots showing project implementation and testing.
- `documentation/Project_Report.pdf` — Detailed project report, if included.

## 6. Challenges Faced

The following are examples of challenges encountered during implementation:

- Configuring the custom VPC, public subnet, Internet Gateway, and route table correctly.
- Configuring Security Group rules for SSH and HTTP access.
- Connecting to the EC2 instance using the correct private key.
- Installing and starting Apache on Ubuntu.
- Resolving file-permission issues while editing website files.
- Configuring Git identity, repository remotes, and branch tracking.
- Resolving GitHub authentication and pushing project changes.
- Managing project files and verifying that updates were committed successfully.

## 7. Learning Outcomes

Through this project, I gained practical experience in:

- Understanding AWS VPCs, subnets, Internet Gateways, route tables, and Security Groups.
- Launching and connecting to an Ubuntu EC2 instance.
- Using Linux commands for file management, permissions, and troubleshooting.
- Installing and managing the Apache web server.
- Hosting a static website on AWS.
- Using Git and GitHub for version control.
- Writing Bash scripts to automate routine system administration tasks.
- Monitoring system resources and services.
- Reviewing Linux logs for troubleshooting.
- Creating timestamped website backups.
- Documenting a cloud deployment project.

## Conclusion

This project demonstrates the basic implementation of a cloud-hosted website using AWS, Ubuntu Linux, Apache, GitHub, and Bash automation. It helped develop practical skills in cloud infrastructure configuration, Linux administration, version control, server monitoring, backup automation, and technical documentation.

**Project Repository:** https://github.com/Aish-Hub-123/DevOps-Project

