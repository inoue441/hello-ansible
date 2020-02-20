FROM centos:7

# infra settings
RUN yum check && yum -y update && yum -y install \
    openssh-server \
    && sed -ri 's/^#PermitEmptyPasswords no/PermitEmptyPasswords yes/' /etc/ssh/sshd_config \
    && sed -ri 's/^#PermitRootLogin yes/PermitRootLogin yes/' /etc/ssh/sshd_config \
    && sed -ri 's/^UsePAM yes/UsePAM no/' /etc/ssh/sshd_config \
    && passwd -d root

# start sshd when booting
RUN /bin/systemctl enable sshd
EXPOSE 22

CMD /sbin/init