---
title: 'DevOps: Day 9'
tags: [DevOps]

---

# DevOps: Day 9

- Some commonly used shell commands are:
* ls, pwd, cp, mv, touch, mkdir, find, top, ps -ef etc.

- Write a simple shell script to list all processes:
* ps -ef
For just the process ID (which let's say in column 2):
* ps -ef | awk -F" " '{print $2}'

- Write a script to print only errors from a remote log:
* curl <remote address> | grep <error>. Hence we can achieve this by using curl(retrieves entire log file), grep is getting just the error portion of the log file and pipe(|) command which sends the output of curl to grep.

- Write a shell script to print numbers divisible by 3 and 5 not 15.

- Write a script to print number 's' in mississippi.
* x=mississippi
* grep -o "s" <<<"$x" | wc -l

- How will you debug the shell script
* set -x at the beginning of shell script.

- What is crontab in Linux? can you provide an example of usage?
* This is when you want an activity to be carried out automatically on linux, for example sending the health information of the server/node every 6am in the morning.

- How to open a read-only mode:
* vim -r <file name>

- What is the difference between hard link and soft link:
* Using hard link, you can create copy or mirror original file. Hard link will create a copy, even if the actual file is deleted from storage, hard link will keep a backup of your file. 
* Soft link is for creating alias file. 
    
Note: Always use examples to explain interview questions.

- What is the difference between break and continue statement:
* Break = breaking the exexution
* continue = continue the execution, but skip this and continue execution after skipping present condition.
    
- What are some of the disadvantages of shell scripting:
* Errors are frequent and costly, just a single error can totally halt the execution of the script.
* The execution speed is slow.
* Bugs or inadequacies in the languages' syntax/implementation.
* Large/Complex task are not suited for it.
* Provides minimal data structures.
* Everytime a shell command is executed, a new process is launched.
* 
    
- What are the different types of loops and when to use:
* For, While, Do While loop.

- Is bash dynamically or statistically typed:
* it is dynamically typed. Because it doesn't need you to indicate the type you are working with.
    
- Explain about a network troubleshooting utility.
* traceroute: used for network debugging.
* traceroute <url>
* tracepath: also used. Doesn't require root privileges.

- How will you sort list of names in a file?
* Use the sort command.
    
- How will you manage logs of a system that generates huge log files everyday.
* logrotate command.