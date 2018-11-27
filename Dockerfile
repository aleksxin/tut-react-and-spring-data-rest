FROM maven:3.5-jdk-8-alpine

RUN apk --no-cache add ca-certificates wget && \
        wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
        wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.28-r0/glibc-2.28-r0.apk && \
        apk add glibc-2.28-r0.apk && \
        wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.28-r0/glibc-bin-2.28-r0.apk && \
        apk add glibc-bin-2.28-r0.apk && \
        wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.28-r0/glibc-i18n-2.28-r0.apk && \
        apk add glibc-i18n-2.28-r0.apk