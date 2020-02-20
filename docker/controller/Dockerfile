FROM centos:7

# infra settings
RUN yum check && yum -y update && yum -y install \
    make \
    openssh-clients \
    sshpass

# application settings
RUN curl -L https://bootstrap.pypa.io/get-pip.py | python \
    && pip install ansible

CMD /sbin/init