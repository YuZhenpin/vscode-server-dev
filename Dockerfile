FROM consol/ubuntu-xfce-vnc

EXPOSE 8080

USER root

RUN apt-get update && \
    apt-get install -y --allow-unauthenticated curl wget git gcc g++ libxkbfile-dev libsecret-1-dev

RUN curl -O https://az764295.vo.msecnd.net/stable/fe22a9645b44368865c0ba92e2fb881ff1afce94/code_1.43.1-1584515895_amd64.deb

RUN dpkg -i code_1.43.1-1584515895_amd64.deb

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -

RUN apt-get install -y --allow-unauthenticated nodejs && \
    npm install -g yarn

RUN git clone https://github.com/microsoft/vscode.git /workspace && \
    cd /workspace && \
    yarn
