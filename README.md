
# Cloud-Based Linux Server Deployment with GitHub Version Control and Automation

## Project Overview
This project demonstrates the deployment of a website on an AWS Ubuntu EC2 instance using Apache. GitHub is used for version control, and Bash scripts automate server health checks, Apache service monitoring, and website backups.

## Objectives
- Create and configure an AWS VPC and public subnet.
- Deploy an Ubuntu server using Amazon EC2.
- Install and configure Apache.
- Host a website on the server.
- Use Git and GitHub for version control.
- Automate routine administration tasks using Bash.
- Review Linux system and authentication logs.

## Technologies Used
- AWS VPC
- Amazon EC2
- Ubuntu Linux
- Apache Web Server
- Git and GitHub
- Bash scripting

## Project Files
- `index.html` — Website hosted on Apache.
- `health-check.sh` — Displays CPU, memory, disk, users, processes, and uptime.
- `apache-monitor.sh` — Checks Apache status and attempts a restart if stopped.
- `backup.sh` — Creates a timestamped compressed website backup.
- `log-report.txt` — Log analysis report.
- `Backup/` — Stores generated backup archives.
- `documentation/Project_Report.pdf` — Project report.

## Deployment Steps
1. Created a custom VPC and public subnet in AWS.
2. Attached an Internet Gateway and configured the route table.
3. Created a Security Group with SSH and HTTP inbound rules.
4. Launched an Ubuntu EC2 instance.
5. Installed Git, Apache, curl, and Vim.
6. Deployed the website to `/var/www/html/index.html`.
7. Created and tested Bash automation scripts.
8. Used Git to commit and push project files to GitHub.
9. Reviewed system and SSH logs.

## How to Run the Scripts
Make scripts executable:
```bash
chmod +x health-check.sh apache-monitor.sh backup.sh
```

Run the server health check:
```bash
./health-check.sh
```

Run the Apache monitor:
```bash
./apache-monitor.sh
```

Create a website backup:
```bash
./backup.sh
```

## Learning Outcomes
- Understanding AWS networking and EC2 deployment.
- Configuring a Linux web server.
- Using Git and GitHub for version control.
- Writing Bash scripts for basic automation.
- Reviewing Linux logs for troubleshooting.

## Conclusion
This project demonstrates basic cloud infrastructure setup, Linux server administration, website deployment, version control, and Bash automation.

