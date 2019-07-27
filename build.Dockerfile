FROM node:10 AS build

WORKDIR /codeship-test

ADD . .

RUN npm ci

FROM node:10

WORKDIR /codeship-test

COPY --from=build /codeship-test .

VOLUME [ "/codeship-test" ]
