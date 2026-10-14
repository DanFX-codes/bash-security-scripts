BASH SECURITY & SYSTEM ADMINISTRATION TOOLKIT
A collection eight Bash scripts developed on ubuntu linux to practise linux Administration, security auditing, system monitoring, backup automation, network reconnaissance, and Troubleshooting.

The project demonstrates practical Bash skills, linux command-line proficiency, file and permission handling, command exit-status checks, and basic automation.

PROJECT OVERVIEW
The tookit contains eight scripts:

SCRIPT                        PURPOSE
system-info.sh               |Displays system and operating-system information.
account-audit.sh             |Checkes wheteher a user account exists and displays account details.
permission-checker.sh        |Inspects a file or directory and checks its permissions.
log-analyzer.sh              |Counts selected log severity keywords, including INFO, WARNING, and ERROR.
service-status.sh            |Checks whether a systemd service exists and whether it is active.
backup.sh                    |Creates timestamed compressed backups of files and directories.
security-recon.sh            |Collects local network information and saves a timestamped reconnaissance report.
troubleshooting.sh           |Reports disk usage, memory usage, system load, and top CPU-consuming processes.

TECHNOlOGIES AND TOOlS
-Bash: scripting and automation
-Ubuntu linux: development and testing environment
-linux ClI utilities: hostname, whoami, date, df, free, ps, uptime, ip, ss, ping, and others
-systemd: service-status checks
-Git and Github: version control and project hosting

SETUP
Needs Ubuntu or another linux-based OS with Bash and standard system tools.

        chmod +x *.sh

Run any scripts:
        ./system-info.sh

for scripts that need input
        ./account-audit.sh dan
        ./permission-checker.sh /etc/passwd
        ./log-analyzer.sh /path/to/your.log
        ./service-status.sh cron
        ./backup.sh /path/to/file-or-directory

other scripts:
         ./security_recon.sh
         ./troubleshooting.sh

Backups go to ~/backups/. Recon reports go to ~/security-reports/.

SKIllS PRACTISED
-Bash scripting and automation
-User and file permission checks
-log and services checks
-backup creation
-network inspection
-system diagnostics and error handling

SAFETY
Use these scripts only on systems you own or have permission to inspect. A detected open port does not by itself mean a system is at risk.

AUTHOR
Daniel Foluwase
Cyber security undergraduate | Bash, Ubuntu, Networking, Security Automation, software engineering.
