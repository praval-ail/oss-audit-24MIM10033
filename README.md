# oss-audit-24MIM10033
# Shell Scripts
by : Gopu Praval Reddy - 24MIM10033

This folder contains a set of simple and useful Bash scripts mainly designed for a Linux based system. These scripts help you gather system information, check if essential software is installed, audit important directories, analyze log files and we can even generate a personal manifesto

The primary software focus for this project is the **Linux Kernel**, the core of all Linux operating systems.

## What's in this folder?

Here is a simple breakdown of what each script does:

### 1. `welcome.sh` - A welcome screen
This script gives you a warm welcome and displays essential information about your computer, it shows:
- The name of your Linux operating system (Distro).
- The version of the Linux Kernel you are currently running.
- Your current username.
- How long your computer has been turned on (the Uptime).
- The current date and time.
- A quick note about the Linux Kernel's open-source license (GPLv2).

### 2. `inspect_new.sh` - FOSS Package Inspector
Since the chosen software for this project is the **Linux Kernel**, this script checks your system's kernel version. It tells you that the kernel is running  It also includes short, descriptive notes about other popular open-source software if the package in question is software like Apache, MySQL, Firefoxeeeeeeeeeeeeeeeeeeeeeee and VLC.

### 3. `audit.sh` - Disk and Permission Auditor
This script acts like a security system checking IDs, It looks at important folders on your system (like `/etc`, `/var/log`, `/home`, `/usr/bin`, and `/tmp`) and displays two things:
- Who has permission to read, write, or execute files in those folders.
- How much storage space those folders are taking up.
It also does a special check on the MySQL configuration folder, just to ensure that specific software is set up correctly.

### 4. `new_log.sh` - Log File Analyzer
Logs are like a computer's diary, recording everything that happens. This script helps you read that diary. You give it a log file, and it searches for a specific word (if you don't provide a word, it looks for "error" by default). It will tell you:
- How many times that word appears in the file.
- The last five times the word was mentioned, so you can see the latest events.


### 5. `manifesto_source.sh` - Open Source Manifesto Generator
An interactive script! It asks you three simple questions about your relationship with open-source tools:
1. What open-source tool do you use every day?
2. What does "freedom" mean to you in one word?
3. What is one thing you would like to build and share freely?
After you answer, it uses your responses to write a personalized "Open Source Manifesto" and saves it to a new text file for you to keep.

--------------------------

## How to use these scripts

To run any of these scripts, you will need to use a terminal on a Linux system.

1. Open your terminal.
2. Navigate to this folder.
3. Make sure the script you want to run has permission to act like a program. You can do this by typing:
   `chmod u+x script_name.sh` (replace `script_name.sh` with the actual file name, like `welcome.sh`).
4. Run the script by typing:
   `./script_name.sh`

*(Note for `new_log.sh`: You need to provide a log file when running it, like `./new_log.sh /var/log/syslog error`.), for the purpose of this project ive used a dummy log file*
