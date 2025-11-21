---
title: 'DevOps: Day 6'
tags: [DevOps]

---

# DevOps: Day 6

- Alot organizations uses Linux distributions (Ubuntu, Linux Mint, Fedora etc) because they're free, safe and fast.

## Linux Architecture

From the bottom to the top we have:

- Operating System (O/S)
    - Kernel
        - System Libraries (e.g. libc, GNU etc.)
            - Compilers
            - User processors
            - System software

- Kernel is the heart of the operating system, it establishes a communication between hardware and software.

- There are four important parts/roles that kernel plays, they are:
    - Device management
    - Memory mamagement
    - Process management
    - Handling system related calls


## Fundamentals of Shell Scripting

In linux, the way one communicates with the operating system is by shell commands.

In production systems GUI (Graphical User Interface is not installed because of how heavy it is, so we want our os to be as light as possible)

- ls: check for files and folders in the current location
- pwd (preset working directory): to see current location
- cd (change directory): for changing directory.
- ls -ltr: provides information of whether it is a directory or not, if it starts with d, it is a directory, if it doen't start with d, it is a file.
- touch <name of file>: to create a file.
- vi <name of file>: create and write in a file.
    - i: to enter insert mode to enter text.
    - esc: to go back to view mode.
    - !wq: to save the file.
    - !x: also save the file.
- mkdir <directory name>: to create a directory
- rm (-r): to remove file/directory.
- free: to check for memory usage. Can also be combined with -g i.e. `free -g`.
- nproc: shows the number of CPUs.
- df -h: shows the disk size.
- top: cpu, memory, disk usage in real time.