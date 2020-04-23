FROM busybox:1.31.1
COPY ./loop.sh ./
ENTRYPOINT ["/bin/sh", "./loop.sh"]
