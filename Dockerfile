FROM drewantech/flask:1.0.0
MAINTAINER Benton Drew <benton.s.drew@drewantech.com>
USER root
RUN rm test_hello.py && \
  pip3.5 install requests
ADD service/test_requests.py .
ENV FLASK_APP test_requests.py
USER python_user
ENTRYPOINT ["python3", "-m", "flask", "run"]
CMD ["--host=127.0.0.2", "--port=5001"]
