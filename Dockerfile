from mhart/alpine-node:latest

WORKDIR /root
COPY . .
RUN sh setup-env.sh
ENTRYPOINT ["mvn","spring-boot:run"]