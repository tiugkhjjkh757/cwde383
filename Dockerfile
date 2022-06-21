FROM alpine

ADD misaka.sh /misaka.sh
ADD kano /usr/local/bin/kano

RUN apk update && \
    apk add -f --no-cache ca-certificates wget unzip bash && \
    chmod 777 /misaka.sh && \
    chmod 777 /usr/local/bin/kano

CMD /misaka.sh