FROM drewantech/flask:2.0.0
MAINTAINER Benton Drew <benton.s.drew@drewantech.com>
USER root
RUN pip3 install requests
ADD service/server.py .
USER python_user
