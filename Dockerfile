FROM dalekseenko/test-selenium-driver

WORKDIR /app

COPY package*.json app_sample.json RunOpenFin.sh test.js wdio.conf.js script.sh ./
RUN npm i

ENV DISPLAY :10

CMD (service xvfb start; export DISPLAY=$DISPLAY; ./script.sh)
