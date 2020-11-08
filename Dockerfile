# https://hub.docker.com/r/lejmr/iredmail/tags
FROM lejmr/iredmail:mysql-1.3.1

LABEL maintainer="A. Borochkin <aaborochkin@gmail.com>"

# create mount points to use with docker volume iredmail
RUN mkdir -p /iredmail/mysql
RUN mkdir -p /iredmail/vmail
RUN mkdir -p /iredmail/clamav
RUN mkdir -p /iredmail/dkim

RUN ln -s /data/mysql /var/lib/mysql
RUN ln -s /data/vmail /var/vmail
RUN ln -s /data/clamav /var/lib/clamav
RUN ln -s /data/dkim /var/lib/dkim