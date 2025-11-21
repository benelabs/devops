---
title: 'DevOps: Day 3'
tags: [DevOps]

---

# DevOps: Day 3

- What is a server?
- Physical (vs) Virtul  Hypervisor
- How to create VM?
- Real World example

## Concept of Virtualization

- Hypervisor is a software that can install virtual machines on your bare metal/physical servers.
- This is more of a logical seperation (Logical isolation). Why we call them virtual machine is because they are only logical, they don't exists physically. 
- Some of the popular hypervisors are VMWare, Xen etc.


Virtual machines are virtual environments that function as virtual computer systems, and this virtual computer systems have their own cpu, memory and hardware. Hence they are not depending on eachother.

The world of virtual machines operates on Hypervisor (whether google gcp, amazon aws or microsoft azure) installed on the physical servers, and whenever anyone requests for virtual machines, what happens is these hypervisors will give you a virtual machine in any of the data centers: this comes in the form of IP Address and anyother information that is needed to access the virutual machine.

So I now understood that efficiency is not just about making resources available for use, but maximizing it's usage. For example, running a resources of 10gb storage and 10 cpu cores, on a 100gb storage and 100 cpu cores platform. And having to spread about 5 of this same resources on 5 different platform, that is inefficient. It would be great to run all 5 resources on just one platform, that would make it more efficient.