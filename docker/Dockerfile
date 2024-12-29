FROM node:18-bookworm

LABEL maintainer="S Davis<sdavis@nativeit.net>"

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y git curl zip bzip2 make && \
    git clone https://github.com/nativeit-dev/massCode.git && \
    cd massCode && git checkout dev && \
    git fetch && git pull
# && make all
#    apt-get clean -y && apt-get autoclean -y && apt-get autoremove -y && \
#    rm -rf /var/lib/apt/lists/* /var/lib/log/* /tmp/* /var/tmp/*
