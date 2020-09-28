from alpine:3.7

WORKDIR /root
COPY . .
RUN sh setup-env.sh
