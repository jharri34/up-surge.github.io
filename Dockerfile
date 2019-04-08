FROM node
COPY . /opt/web
WORKDIR /opt/web
CMD  curl -sL https://deb.nodesource.com/setup_11.x | bash - && \
  apt-get install -y nodejs && \
  npm install gulp-cli -g && \
  npm install gulp -D && \
  npm install && \
  npm start
