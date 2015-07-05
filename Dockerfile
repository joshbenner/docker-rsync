FROM alpine:3.2
MAINTAINER Josh Benner <josh@bennerweb.com>

RUN apk update && \
	apk add bash openssh-client rsync && \
	rm -rf /var/cache/apk/*

ENTRYPOINT ["rsync"]