FROM debian:12-slim
LABEL maintainer="Joe Block <jpb@unixorn.net>"
LABEL description="python3 on debian bullseye-slim"

RUN apt-get update && \
    apt-get install -y apt-utils ca-certificates --no-install-recommends && \
    apt-get upgrade -y --no-install-recommends && \
    apt-get install -y --no-install-recommends python3-pip python3-dev && \
    apt-get clean && \
		update-ca-certificates && \
		rm -fr /tmp/* /var/lib/apt/lists/*
RUN python3 -m pip install --upgrade --no-cache-dir --break-system-packages pip setuptools wheel && \
		rm -fr /tmp/* /var/lib/apt/lists/*

CMD ["bash"]
