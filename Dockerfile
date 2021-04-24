
FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive 

RUN apt-get update \
    && apt-get install -y python3 \
    python3-pip \
    vim \
    curl

RUN pip3 install \
    docker \
    pygal \
    ansible 

RUN curl -sLf https://spacevim.org/install.sh | bash

VOLUME ["workspace"]

COPY test.txt /tmp/

CMD [ "sleep", "infinity" ]
