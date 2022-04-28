FROM alpine

RUN apk update && apk add -u ca-certificates

COPY tmp/circleci /circleci

COPY templates/index.html /templates/index.html

EXPOSE 9000

CMD ["/circleci"]