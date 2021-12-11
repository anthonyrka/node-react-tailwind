FROM node:17-alpine3.12

ENV GIT_SSL_NO_VERIFY=1

RUN apk add -y --no-cache \
        vim \
        git \
        bash \
        curl 

RUN mkdir -p ~/.vim/pack/vendor/start

RUN set -xe \
        && curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ 
                https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
        && git clone https://github.com/sheerun/vim-polyglot ~/.vim/pack/vendor/start/vim-polyglot

COPY test.vimrc /root/.vimrc
COPY test.bashrc /root/.bashrc

WORKDIR /home/app
