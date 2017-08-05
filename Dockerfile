FROM alpine:3.6
MAINTAINER Matt Bentley <mbentley@mbentley.net>

RUN echo '@testing http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories &&\
  apk --no-cache add tsung@testing

ENTRYPOINT ["tsung"]
CMD ["-h"]
