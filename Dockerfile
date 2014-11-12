# Salt-Shell Image
#

FROM mbrgm/salt-master-base

RUN apt-get update \
    && apt-get -y install openssh-server \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /var/run/sshd

ADD assets/salt/saltrc /root/.saltrc

ENV HOME /root

EXPOSE 22

ENTRYPOINT ["/usr/sbin/sshd", "-D"]
