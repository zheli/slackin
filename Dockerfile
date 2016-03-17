FROM octohost/nodejs

ENV PORT 3000

ADD . /srv/www

WORKDIR /srv/www

RUN npm install

RUN make

EXPOSE 3000

CMD ./bin/slackin --port $PORT --interval $SLACK_INTERVAL $SLACK_SUBDOMAIN $SLACK_API_TOKEN
