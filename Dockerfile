From debian:sid

RUN apt-get update && \
    apt-get install -y python3.6 python3-pip && \
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash && \
    export NVM_DIR="$HOME/.nvm" && \
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && \
    nvm install 7.9.0 && \
    nvm use 7.9.0