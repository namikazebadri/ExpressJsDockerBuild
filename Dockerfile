FROM node:14.16.0-alpine3.13

ENV EXPRESS_HOME=/app

RUN mkdir -p $EXPRESS_HOME

WORKDIR $EXPRESS_HOME

COPY . $EXPRESS_HOME

# install dependencies
RUN npm install

EXPOSE 3000

ENTRYPOINT ["./docker-entrypoint.sh"]