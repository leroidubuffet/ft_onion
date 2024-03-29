# Debian Installation
FROM	debian:latest

# OS Package Updates
RUN		apt-get update
RUN		apt-get -y upgrade


# Nano Installation
RUN 	apt-get install -y nano

# Nginx Installation
RUN		apt-get install -y nginx
COPY	./index.html /var/www/html

# SSH Installation
RUN	apt-get install -y openssh-server
COPY	./sshd_config /etc/ssh/sshd_config
RUN		echo 'root:root' | chpasswd

#	TODO
# https://www.thegeekdiary.com/run-docker-as-a-non-root-user/
# Add a new user "yago" with user id 8877
#RUN useradd -u 8877 yago
# Change to non-root privilege
#USER yago

# Tor Installation
#  remove root
RUN		apt-get install -y tor
COPY	./torrc /etc/tor/torrc

# Ports
EXPOSE	4242
EXPOSE	80

# Init Container
CMD		service nginx start	&& service ssh start && tor

