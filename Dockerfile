FROM ubuntu:22.04

# Create user with bash shell
RUN apt update && \
    apt install -y openssh-server sudo && \
    mkdir /var/run/sshd && \
    useradd -m -s /bin/bash docker && \
    echo "docker:docker" | chpasswd && \
    echo "docker ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers


EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]