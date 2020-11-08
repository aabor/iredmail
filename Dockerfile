# https://hub.docker.com/r/lejmr/iredmail/tags
FROM lejmr/iredmail:mysql-1.3.1

LABEL maintainer="A. Borochkin <aaborochkin@gmail.com>"

# iRedMail special variables
ENV SOGO_WORKERS=1
ENV TZ="Europe/Moscow"
ENV IREDAPD_PLUGINS="['reject_null_sender', 'reject_sender_login_mismatch', 'throttle', 'amavisd_wblist', 'sql_alias_access_policy']"


# create mount points to use with docker volume iredmail
RUN mkdir -p /iredmail/mysql
RUN mkdir -p /iredmail/vmail
RUN mkdir -p /iredmail/clamav
RUN mkdir -p /iredmail/dkim

RUN ln -s /iredmail/mysql /var/lib/mysql
RUN ln -s /iredmail/vmail /var/vmail
RUN ln -s /iredmail/clamav /var/lib/clamav
RUN ln -s /iredmail/dkim /var/lib/dkim