FROM node:13.10.1-stretch

RUN apt-get update && \
    apt-get install -y git

RUN git clone https://github.com/cdr/code-server.git && \
    cd code-server && \
    npm install && \
    npm run watch
