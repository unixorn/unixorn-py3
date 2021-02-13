FROM debian:buster-slim
LABEL maintainer="Joe Block <jpb@unixorn.net>"
LABEL description="python3 on debian buster-slim"

RUN apt-get update && \
    apt-get install -y apt-utils ca-certificates --no-install-recommends && \
    apt-get upgrade -y --no-install-recommends && \
    apt-get install -y --no-install-recommends python3-pip && \
		update-ca-certificates && \
    pip3 install setuptools wheel && \
		rm -fr /tmp/* /var/lib/apt/lists/*

CMD ["bash"]
