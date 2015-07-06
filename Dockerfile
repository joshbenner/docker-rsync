FROM ubuntu:trusty
MAINTAINER Josh Benner <josh@bennerweb.com>

RUN apt-get update && \
	apt-get install openssh-client rsync && \
	rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["rsync"]