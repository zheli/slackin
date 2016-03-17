FROM octohost/nodejs

ENV PORT 3000

ADD . /srv/www

WORKDIR /srv/www

RUN npm install

RUN make

EXPOSE 3000

CMD ./bin/slackin --port $PORT $SLACK_SUBDOMAIN $SLACK_API_TOKEN
