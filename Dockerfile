FROM node:13.10.1-stretch

EXPOSE 8080

RUN apt-get update && \
    apt-get install -y git

RUN git clone https://github.com/cdr/code-server.git && \
    cd code-server && \
    npm install && \
    npm run watch
