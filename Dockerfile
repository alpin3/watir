FROM gliderlabs/alpine:3.4
MAINTAINER Vlatko Kosturjak kost@kost.im

RUN apk --update add xvfb dbus ttf-freefont firefox-esr udev chromium ca-certificates gcc libc-dev make ruby ruby-dev libffi-dev bash && rm -f /var/cache/apk/* && \
  gem install --no-rdoc --no-ri watir
ENTRYPOINT ["/bin/bash"]

