# Salt-Shell Image
#

FROM mbrgm/salt-master

ADD assets/salt/saltrc /root/.saltrc

ENV HOME /root

ENTRYPOINT ["/bin/bash"]
