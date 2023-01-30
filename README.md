# ft_onion

This project is a part of 42's Cybersecurity bootcamp.

The goal of this project is to create a web page and make it accessible from the Tor network by creating a hidden service. The hidden service is a web service that hides on the Tor network.

You must run a web server that shows a webpage on the Tor network.

• The service must have a static web page: a single index.html file.

• The page will be accessible through a url of the type xxxxxxxxx.onion.

• The content displayed on the page is up to you.

• Nginx will be used to configure the web server. No other server or framework is allowed.

• Access to the static page via HTTP on port 80 must be enabled.

• Access to the server via SSH on port 4242 must be enabled.

• You should not open any ports or set any firewall rules.

### Description

This repository contains files necessary to create a Docker image based on the latest version of Debian Linux. The following software packages are installed and configured in the image:

- Nano text editor
- Nginx web server with an index.html file
- OpenSSH server with a custom sshd_config file
- Tor anonymous communication software

### Usage
To build and run the Docker image, run `./docker.sh`

This will build the image and run a new container, mapping port 80 to the host's port 80 and port 4242 to the host's port 4242.

To delete all Docker containers and images, run `./delete_all.sh`

### SSH Configuration
The sshd_config file is customized to listen on port 4242 and disallow password authentication. The root user is also not permitted to log in.

### Tor Configuration
Tor is installed and the torrc file is copied into the container to provide custom configurations. The default exposed port is 4242.
