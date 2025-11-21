---
title: 'DevOps: Day 8'
tags: [DevOps]

---

# DevOps: Day 8

Hashtags (#) are used to create comments in shell script.
- Start with the shebang (#!/bin/bash)
- Always provide the Metadata information at the top of the script after the shebang it is always great to provide author name, date of creation, Description of what it does and version of the script when creating a script.
- To set your script at debug mode use: set -x at the top of your script. By doing this, before any Command is executed, it will print out the command that is being executed.
-  ps -ef: ps means processes, whereas ef gives you more information. This command list all running processes on your node. Including the name, process id and the likes.
-  To get the running process of a particular program, use the command:
		ps -ef | grep "name of process"
-  "|" which is known as pipe command sends the output of the first command to the second command.
-  Shell has about three channels, the stdin, stdout and stderr.
-  If you use some commands just like date and pipe (|) it to echo, nothing happens because date sends it's result to stdin. But pipe (|) only recieve results that are sent to stdout. 
-  awk: this command processes and filters out information.
-  `ps -ef | grep amazon | awk -F" " '{print $2}'`: this command get all running processes, sends it to grep to get only those with amazon and the finally sends it to `awk` to get the second column, which is the process id of the running processes.
-  when using a pipe (`|`) in your code, use `set -e` (this command exits the script when there is an error) and `set -o pipefail` or combine set -eo at the top of your script 
-  One of the drawbacks of `set -e` is that it will not error when there is a pipe (`|`) and that is why it is also good/great to add `set -o` because with pipe, normally it only checks for the authenticity of your last command, in the sequence of pipe, thus even if other commands are wrong so far the last command is correct, without using the set -o pipefail is used. 
-  curl: retrieves the information from internet.
-  curl -X GET <api url>: used to get information from an api.
- wget: this command downloads directly from the internet.
- find: It finds any file in the path specified.
- su: switch user,this command is used to Switch user.
- we have the ifs and else conditionals And also the for, while, until & select loops in shell scripting.
- trap: used to trap signals. Signals in linux are Whatever action performed with keyboard or command.
- 