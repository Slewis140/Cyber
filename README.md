## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Graphic]: https://github.com/Slewis140/Cyber/blob/c78f65a40b7953b4295cddf72b0bd1d44a26852b/Images/Lewis.drawio

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

/Ansible/Files

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
- A key advantage of this setup is the time saving when applying updates or changes across all VMs

The playbook implements the following tasks:
-Get and installs Docker.io
-Increases virutal memory to meet requirements
-Downloads and launches docker elk container
-Enables docker services

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![Docker ps]: (https://github.com/Slewis140/Cyber/blob/c78f65a40b7953b4295cddf72b0bd1d44a26852b/Images/Dockerps.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
-10.0.0.4 10.0.0.5 10.0.0.6 10.0.0.7

We have installed the following Beats on these machines:
-Metricbeat
-Filebeat

These Beats allow us to collect the following information from each machine:
- Metricbeat collects metrics from the operating system and services running on the servers.
- Filebeat collects the log files or locations that we specify, collects log events, and forwards them either to Elasticsearch or Logstash for indexing.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- ssh -i .ssh/id_rsa azureuser@104.42.21.23
- sudo docker container start clever_napier
- sudo docker container attach clever_napier
- Copy the filebeat-config.yml file to /etc/files/filebeat-config.yml.
- Update the filebeat-playbook.yml file to include which machines to install on.
- Run the playbook, and navigate to http://20.112.110.224:5601/app/kibana to check that the installation worked as expected.


