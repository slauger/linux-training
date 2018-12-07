FROM debian:stable
MAINTAINER Simon Lauger <simon@lauger.de>

RUN sed -i 's/stable main/stable main contrib non-free/g' /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y --no-install-recommends python3-flask python3-setuptools && \
    apt-get clean

ENV FLASK_APP=/opt/flaskapp.py
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

COPY flaskapp.py /opt/flaskapp.py

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]
