
FROM ubuntu:focal

ENV DEBIAN_FRONTEND=noninteractive 

RUN apt update \
    && apt install -y python3 \
    python3-pip \
    vim

RUN pip3 install \
    docker \
    pygal \
    ansible 

RUN curl -sLf https://spacevim.org/install.sh | bash

VOLUME ["workspace"]

COPY test.txt /tmp/

CMD [ "sleep", "infinity" ]