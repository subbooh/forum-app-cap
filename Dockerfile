from mhart/alpine-node:latest

WORKDIR /root
COPY . .
RUN sh setup-env.sh
