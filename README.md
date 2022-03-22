## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

Slewis140/Cyber/Images/Lewis.drawio

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

  - _TODO: Enter the playbook file._

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly capable to handle traffic, in addition to restricting access to the network.
Load balancers add layers of protection to this network. Additionally the jumpbox allows for servicing our VMs.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the data and system logs.
Filebeat watches the. files or locations specified and collects logs for forwarding.
Metricbeat records and monitors metrics from the system and services running on the server.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name       | Function | Ip Address | Operating System |
|------------|----------|------------|------------------|
| Jump Box   | Gateway  | 10.0.0.4   | Linux            |
| Web 1      | VM       | 10.0.0.5   | Linux            |
| Web 2      | VM       | 10.0.0.6   | Linux            |
| Web 3      | VM       | 10.0.0.7   | Linux            |
| Elk Server | Logs     | 10.1.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the allowed machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
172.65.3.140

Machines within the network can only be accessed by the Jumpbox.
10.0.0.4

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed Ip Addresses |
|----------|---------------------|----------------------|
| Jump Box | yes                 | 174.65.3.140         |
| VM1      | No                  | 10.0.0.4             |
| VM2      | No                  | 10.0.0.4             |
| VM3      | No                  | 10.0.0.4             |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _TODO: What is the main advantage of automating configuration with Ansible?_

The playbook implements the following tasks:
-Get and installs Docker.io
-Increases virutal memory to meet requirements
-Downloads and launches docker elk container
-Enables docker services

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

/CyberImages/Dockerps.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
-10.0.0.4 10.0.0.5 10.0.0.6 10.0.0.7

We have installed the following Beats on these machines:
-Metricbeat
-Filebeat

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._%                                     seanlewis@Seans-MacBook-Pro README % cd
seanlewis@Seans-MacBook-Pro ~ % ls
Applications		Downloads		Pictures
Creative Cloud Files	Library			Public
Desktop			Movies			Sean-s-
Documents		Music			VirtualBox VMs
