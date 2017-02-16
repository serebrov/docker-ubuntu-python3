FROM ubuntu:xenial
RUN apt update
RUN apt install -y python3-pip python3-dev python3-virtualenv fabric \
      libpq-dev libjpeg-dev libxml2-dev libxslt-dev libfreetype6-dev \
      postgresql-client git curl wget
# Without LC_ALL setting httpretty installation fails
# Set the locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
# Needed for pytest when run tests with docker exec -it
ENV TERM xterm
