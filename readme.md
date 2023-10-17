# Vagrant Multi-Node Web Environment

![Project Image](others/arch.png)

> A Vagrant-based web environment with load balancing and high availability for academic purposes.

---

## Table of Contents

- [Description](#description)
- [Features](#features)
- [Screenshots](#screenshots)
- [Installation](#installation)
- [Usage](#usage)
- [Technologies](#technologies)
---

## Description

This project was developed for an academic course with the aim of creating a ready-to-use environment based on Vagrant, nginx, Load Balancing, and High Availability.
Vagrantfile creates 4 servers:
* Load Balancer 1
* Load Balancer 2
* Web Server 1
* Web Server 2
and Virtual router

---

## Features

- Automatic provisioning of a multi-node web environment
- Load balancing for distributing traffic
- High availability setup using Keepalived

---

## Installation

To get started with this project, follow these steps:

1. Clone this repository.
2. Install Vagrant and VirtualBox on your machine.
3. Navigate to the project directory in your terminal.
4. Run the command `vagrant up` to start the virtual machines and provision the environment.

---

## Usage

After successfully installing the project, you can access the web environment and test the load balancing and high availability configurations.

---

## Technologies

- Vagrant
- VirtualBox
- Nginx
- Keepalive
- mkcert

---
