FROM ubuntu:14.04
RUN apt-get update
RUN apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install bind9
EXPOSE 53
VOLUME /var/dvol/bind
CMD ["/usr/sbin/named", "-c", "/var/dvol/bind/named.conf", "-f"]
