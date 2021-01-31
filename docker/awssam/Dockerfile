FROM alpine

MAINTAINER tuimac

EXPOSE 3000

WORKDIR /root
ADD entrypoint.sh /root/entrypoint.sh

RUN apk update && \
    apk upgrade && \
    apk add --no-cache tzdata bash python3 py3-pip python3-dev gcc py-configobj libusb linux-headers musl-dev curl ncurses git vim openjdk11-jre-headless docker tree && \
    pip3 install aws-sam-cli && \
    mkdir -p /etc/vim/backup && \
    mkdir -p /etc/vim/undo && \
    rm /etc/vim/vimrc && \
    curl -L https://raw.githubusercontent.com/tuimac/tools/master/vim/vimrc -o /etc/vim/vimrc && \
    curl -L https://raw.githubusercontent.com/tuimac/tools/master/linux/bashrc/.bashrc_node_docker -o /root/.bashrc && \
    echo $'\n\
echo -en "\e[1m\e[34m" \n\
cat << "EOF" \n\
\n\
__________       _________    ____________________  ___\n\
___    |_ |     / /_  ___/    __  ___/__    |__   |/  /\n\
__  /| |_ | /| / /_____ \     _____ \__  /| |_  /|_/ / \n\
_  ___ |_ |/ |/ / ____/ /     ____/ /_  ___ |  /  / /  \n\
/_/  |_|___/|__/  /____/______/____/ /_/  |_/_/  /_/   \n\
                       _/_____/                        \n\
EOF' >> /root/.bashrc && \
    git clone https://github.com/tuimac/serverless_local.git && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    sam init --no-interactive \
        --app-template hello-world \
        --runtime java11 \
        --dependency-manager maven \
        --package-type Zip \
        --name src

ENTRYPOINT ["./entrypoint.sh"]
