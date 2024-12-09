# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .nanorc
This is my custom .nanorc configuration for Nano
## .bashsrc
This is my custom .bashrc configuration for Bash

# My Dotfiles

These are my dotfile configuration files for different software in Bash. Each file and script in this repository serves a specific purpose to customize and enhance the user experience in a Linux shell environment.

---

## **Files and Their Purpose**
---

## **Scripts**

### **3. linux.sh**
- **Location**: `./bin/linux.sh`  
- **Purpose**: Automates the setup of the custom environment.  
- **What it does**:
  - Verifies the operating system is Linux.
  - Creates the `~/.TRASH` directory if it doesn't already exist.
  - Backs up any existing `.nanorc` file as `.bup nanorc`.
  - Copies the custom `.nanorc` from the repository to the home directory.
  - Appends the custom Bash configuration (`bashrc_custom`) to the `.bashrc` file.  

---

### **4. cleanup.sh**
- **Location**: `./bin/cleanup.sh`  
- **Purpose**: Reverts changes made by the `linux.sh` script.  
- **What it does**:
  - Deletes the `~/.nanorc` file.
  - Removes the `~/.TRASH` directory.
  - Removes the line sourcing `bashrc_custom` from `.bashrc` using the `sed` command.

---

## **Build System**

### **5. Makefile**
- **Purpose**: Automates script execution.  
- **Targets**:
  - **`linux`**: Runs `linux.sh` to apply configurations.
  - **`clean`**: Runs `cleanup.sh` to revert configurations.
- **Dependency**: The `linux` target depends on `clean` to ensure a clean environment before setup.

---

## **Supporting Files**

### **6. .gitignore**
- **Purpose**: Prevents unnecessary or sensitive files from being tracked by Git.  
- **Contents**:
  - `.DS_Store`: MacOS system files.
  - `linuxsetup.log`: Log file generated during the setup process.

---

## **How to Use This Repository**
1. Clone the repository:
   ```bash
   git clone git@github.com:<githubusername>/.dotfiles.git

