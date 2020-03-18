FROM node:13.10.1-stretch

EXPOSE 8080

RUN apt-get update && \
    apt-get install -y git

RUN git clone https://github.com/microsoft/vscode && \
    cd vscode && \
    yarn && \
    git clone https://github.com/cdr/code-server src/vs/server && \
    cd src/vs/server && \
    yarn && \
    yarn patch:apply && \
    yarn watch && \
    yarn start
