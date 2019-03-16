FROM alpine:latest

RUN apk update 
RUN apk add --no-cache p7zip libgcc libstdc++

COPY backup.sh /usr/bin/backup.sh

RUN chmod +x /usr/bin/backup.sh

VOLUME /output
VOLUME /input

CMD ["sh", "/usr/bin/backup.sh"]
