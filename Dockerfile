FROM circleci/clojure:lein-2.8.1
MAINTAINER David Goeke <dockerhub@waygate.org>

RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN npm install firebase-tools
RUN sudo ln -s /tmp/node_modules/firebase-tools/bin/firebase /usr/bin/firebase
