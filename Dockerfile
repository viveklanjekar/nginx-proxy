FROM nginx:1.17.10-alpine

# for htpasswd command
RUN apk add --no-cache --update \
      apache2-utils
RUN rm -f /etc/nginx/conf.d/*

ENV SERVER_NAME example.com
ENV PORT 8080
ENV WORKER_PROCESSES auto

COPY files/run.sh /
COPY files/nginx.conf.tmpl /

# use SIGQUIT for graceful shutdown
# c.f. http://nginx.org/en/docs/control.html
STOPSIGNAL SIGQUIT

ENTRYPOINT ["/run.sh"]
