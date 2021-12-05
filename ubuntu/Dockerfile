FROM ubuntu:latest
ENV ROOT_PASSWD=root
COPY scripts /root/scripts
WORKDIR /root/scripts
RUN ./use-sjtu-mirror.sh
RUN apt -qq update
RUN ./set-passwd.sh ${ROOT_PASSWD}
RUN ./install-ssh.sh
EXPOSE 22
ENTRYPOINT service ssh start && /bin/bash