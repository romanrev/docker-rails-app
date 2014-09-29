# Build up from ubuntu 14.04
FROM ubuntu:14.04
MAINTAINER Roman Revyakin <roman@ticketbase.com>
# The usual stuff: making sure all needed packages are installed
RUN apt-get update
RUN apt-get -y install \
    curl \
    git-core
# Install rvm
RUN bash -l -c "curl -L https://get.rvm.io | bash -s stable; . /etc/profile; rvm reload"
RUN bash -l -c "rvm install 2.1.1"
RUN bash -l -c "gem list --local bundler | grep '^bundler[ \t]*(' || gem install bundler"
