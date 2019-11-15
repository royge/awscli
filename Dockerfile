FROM python:3-alpine

RUN apk add --no-network --no-cache --repositories-file /dev/null "apk-tools>2.10.1"
RUN apk add groff less

RUN pip install awscli
