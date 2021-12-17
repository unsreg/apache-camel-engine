FROM unsreg/apache-camel-engine:latest

COPY resources /opt/apache-camel-engine/
#COPY resources/etc/apt/sources.list /etc/apt/sources.list

WORKDIR /opt/apache-camel-engine/

#208.80.154.15
#RUN echo 'deb http://deb.debian.org/debian buster-proposed-updates main contrib non-free' > /etc/apt/sources.list
#RUN chmod o+r /etc/resolv.conf

RUN apt-get autoclean
RUN apt-get update
#RUN apt-get upgrade -y
#RUN apt-get autoremove -y
RUN apt-get install mc -y
RUN apt-get install mariadb-client -y