FROM arm32v6/alpine
MAINTAINER Daniel Randall <danny_randall@byu.edu>

COPY bin/ /usr/bin/

RUN [ "cross-build-start" ]

RUN apk update
RUN apk add ca-certificates

RUN [ "cross-build-end" ]
