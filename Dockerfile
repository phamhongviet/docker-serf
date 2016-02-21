FROM busybox

COPY serf /usr/bin/serf

ENTRYPOINT ["/usr/bin/serf"]
CMD ["agent"]
