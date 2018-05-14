FROM williamyeh/ansible:ubuntu16.04

RUN mkdir /ansible
WORKDIR /ansible
VOLUME /ansible

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
