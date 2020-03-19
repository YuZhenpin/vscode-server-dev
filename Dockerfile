FROM chenjr0719/ubuntu-unity-novnc

EXPOSE 8080

RUN curl -O https://az764295.vo.msecnd.net/stable/fe22a9645b44368865c0ba92e2fb881ff1afce94/code_1.43.1-1584515895_amd64.deb

#RUN dpkg -i code_1.43.1-1584515895_amd64.deb

RUN echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list

RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

RUN apt-get install -y --allow-unauthenticated nodejs git gcc g++ google-chrome-beta libxkbfile-dev libsecret-1-dev && \
    npm install -g yarn

RUN git clone https://github.com/microsoft/vscode.git /workspace && \
    cd /workspace && \
    yarn
