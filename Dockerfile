FROM nginx:alpine

COPY . /tmp/

ENV MIMO_DOMAIN=wisp.services

RUN sh /tmp/install.sh && echo eggs

# EXPOSE 8080
# EXPOSE 8443
