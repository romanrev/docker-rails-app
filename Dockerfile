# Build up from ubuntu 14.04
FROM ubuntu:14.04
MAINTAINER Roman Revyakin <roman@ticketbase.com>
# Install rvm
RUN bash -l -c "curl -L https://get.rvm.io | bash -s stable; . /etc/profile; rvm reload"
RUN bash -l -c "rvm install 2.2.1"
