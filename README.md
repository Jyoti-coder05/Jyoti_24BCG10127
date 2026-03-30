# OSS Capstone Project — The Open Source Audit

Student Name: [JYOTI V MUDALAGI]  
Registration Number: [24BCG10127]  
Course: Open Source Software | OSS NGMC  
Audited Software: Git — Distributed Version Control System  
License: GNU General Public License v2 (GPL v2)

Overview

This repository contains the complete submission for the Open Source Audit Capstone Project. The project audits Git across five dimensions: its origin story, GPL v2 licence analysis, ethical reflection on open source, Linux system footprint, and position in the FOSS ecosystem. Five shell scripts demonstrate practical Linux skills.

 #Repository Structure

```
oss-audit-[rollnumber]/
├── README.md                            ← This file
├── script1_system_identity.sh           ← System Identity Report
├── script2_package_inspector.sh         ← FOSS Package Inspector
├── script3_disk_permission_auditor.sh   ← Disk and Permission Auditor
├── script4_log_analyzer.sh              ← Log File Analyzer
├── script5_manifesto_generator.sh       ← Open Source Manifesto Generator
└── OSS_Capstone_Report_Git.pdf          ← Project Report (uploaded separately)
```

#Shell Scripts

# Script 1 — System Identity Report
File: `script1_system_identity.sh`  
Description:Displays a welcome screen showing the Linux distribution name, kernel version, logged-in user, home directory, system uptime, current date/time, and the open-source licence covering the OS.  
Concepts: Variables, command substitution `$()`, `echo`, conditional file reading, formatted output.

Run:
```bash
chmod +x script1_system_identity.sh
./script1_system_identity.sh
```

---

##Script 2 — FOSS Package Inspector
File: `script2_package_inspector.sh`  
Description:Checks whether Git and related FOSS packages are installed, retrieves version info using `dpkg`, and uses a `case` statement to print a philosophy note for each package.  
Concepts:`if-then-else`, `case` statement, `dpkg -l`, pipe with `grep`, functions, `for` loop.

Run:
```bash
chmod +x script2_package_inspector.sh
./script2_package_inspector.sh
```

---

##Script 3 — Disk and Permission Auditor
File: `script3_disk_permission_auditor.sh`  
Description: Loops through important system directories (`/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`, `/usr/share/doc`) and reports permissions, owner, group, and disk usage. Also audits Git's binary and config file locations specifically.  
Concepts: Arrays, `for` loop, `-d` directory test, `ls -ld`, `awk`, `du`, `printf` for aligned output.

Run:
```bash
chmod +x script3_disk_permission_auditor.sh
./script3_disk_permission_auditor.sh
```

---

# Script 4 — Log File Analyzer
File: `script4_log_analyzer.sh`  
Description: Reads a log file line by line, counts occurrences of a keyword (default: `error`), and prints the last five matching lines. Includes a retry loop if the file is not found.  
Concepts: Command-line arguments `$1 $2`, parameter expansion with defaults, `while IFS= read -r`, counter variables, arithmetic expansion, retry loop.

Run:
```bash
chmod +x script4_log_analyzer.sh

# Analyze syslog for 'error'
./script4_log_analyzer.sh /var/log/syslog error

# Analyze dpkg log for 'installed'
./script4_log_analyzer.sh /var/log/dpkg.log installed

# Default keyword (error)
./script4_log_analyzer.sh /var/log/auth.log
```

Dependencies: A readable log file on the system. Any file under `/var/log/` works. If permission is denied, run with `sudo`.

---

#Script 5 — Open Source Manifesto Generator
File: `script5_manifesto_generator.sh`  
Description:Asks the user three interactive questions, composes a personalised open-source philosophy statement from the answers, and saves it to `manifesto_[username].txt`.  
Concepts: `read` for interactive input, string concatenation, file redirection (`>` and `>>`), `date` command, functions as alias-style shorthand, input validation.

Run:
```bash
chmod +x script5_manifesto_generator.sh
./script5_manifesto_generator.sh
```

The generated manifesto is saved to: `manifesto_[your-username].txt` in the current directory.

# System Requirements

- OS: Ubuntu 20.04+ or any Debian-based Linux distribution
- Shell: Bash (pre-installed on all Ubuntu systems)
- Packages: `git`, `curl`, `vim`, `python3` (for Script 2 — install with `sudo apt install git curl vim python3`)
- Permissions: Scripts 1, 2, 3, 5 run as normal user. Script 4 may need `sudo` for protected log files.


# Running All Scripts (Quick Test)

```bash
# Clone the repository
git clone https://github.com/[your-username]/oss-audit-[rollnumber].git
cd oss-audit-[rollnumber]

# Make all scripts executable
chmod +x *.sh

# Run each script
./script1_system_identity.sh
./script2_package_inspector.sh
./script3_disk_permission_auditor.sh
./script4_log_analyzer.sh /var/log/syslog error
./script5_manifesto_generator.sh
```

---

#Project Report

The full project report (12–16 pages) is submitted as a PDF on the VITyarthi portal. It covers:

- Part A: Origin story of Git, GPL v2 licence analysis, and ethical reflection on open source
- Part B: Git's Linux footprint — directories, permissions, service management
- Part C: FOSS ecosystem — dependencies, GitHub, governance model
- Part D: Open source vs proprietary comparison table and verdict

# References

- GNU Project — Free Software Definition: https://gnu.org/philosophy/free-sw.html
- Open Source Initiative: https://opensource.org/osd
- Git Official Documentation: https://git-scm.com/doc
- GPL v2 Full Text: https://gnu.org/licenses/old-licenses/gpl-2.0.html
- Eric S. Raymond — The Cathedral and the Bazaar: http://catb.org/~esr/writings/cathedral-bazaar
- The Linux Command Line (William Shotts): https://linuxcommand.org
