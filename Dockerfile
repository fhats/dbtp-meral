FROM ubuntu:14.04
MAINTAINER fhats

RUN apt-get update
RUN apt-get install -y python-pip python-dev libsqlite3-dev
RUN apt-get install -y python-boto
RUN apt-get install -y python-pysqlite2
RUN apt-get install -y python-twisted

ADD ./ /opt/meral
WORKDIR /opt/meral

RUN cd supybot ; python setup.py install ; cd -

ENTRYPOINT /usr/local/bin/supybot meral.conf --allow-root >/var/log/meral 2>&1

