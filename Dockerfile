FROM centos:latest
MAINTAINER Bayram <bayramozinal@gmail.com>

LABEL name="CentOS Base Image" \
    vendor="CentOS" \
    license="GPLv2" \
    build-date="20170801"

USER root
COPY build.sh /tmp/build.sh
RUN /tmp/build.sh

RUN npm install -g bower grunt-cli && \
    echo '{ "allow_root": true }' > /root/.bowerrc

WORKDIR /container
CMD ["/bin/bash"]
