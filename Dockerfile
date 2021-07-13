FROM debian:buster-slim
LABEL maintainer="Joe Block <jpb@unixorn.net>"
LABEL description="python3 on debian buster-slim"

RUN apt-get update && \
    apt-get install -y apt-utils ca-certificates --no-install-recommends && \
    apt-get upgrade -y --no-install-recommends && \
    apt-get install -y --no-install-recommends python3-pip python3-dev && \
		update-ca-certificates && \
    pip3 install setuptools wheel --no-cache-dir && \
		rm -fr /tmp/* /var/lib/apt/lists/*

CMD ["bash"]
