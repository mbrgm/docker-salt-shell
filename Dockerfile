# Salt-Shell Image
#

FROM mbrgm/salt-master-base

RUN apt-get update \
    && apt-get -y install openssh-server \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /var/run/sshd

ADD assets/salt/shell-fixed.conf /etc/salt/master.d/

EXPOSE 22

ENTRYPOINT ["/usr/sbin/sshd", "-D"]
