From debian:sid

RUN apt-get update && \
    apt-get install -y python3.6 python3-pip curl git xvfb wget zip tar firefox chromium openssh-client && \
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash && \
    wget https://chromedriver.storage.googleapis.com/2.30/chromedriver_linux64.zip && \
    wget https://github.com/mozilla/geckodriver/releases/download/v0.17.0/geckodriver-v0.17.0-linux64.tar.gz && \
    unzip chromedriver_linux64.zip && \
    tar xzf geckodriver-v0.17.0-linux64.tar.gz && \
    mv chromedriver /usr/local/bin/ && \
    mv geckodriver /usr/local/bin/ && \
    export NVM_DIR="$HOME/.nvm" && \
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && \
    nvm install 7.9.0 && \
    nvm use 7.9.0