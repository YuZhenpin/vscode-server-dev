FROM node:dubnium

EXPOSE 8080

RUN apt-get update && \
    apt-get install -y git

RUN git clone https://github.com/cdr/code-server /code-server && \
    cd /code-server && \
    yarn && \
    yarn vscode && \

WORKDIR /code-server

CMD yarn watch
