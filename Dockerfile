from mhart/alpine-node:latest

ARG PORT=8080
ENV PORT $PORT
WORKDIR /root
COPY . .
RUN sh setup-env.sh
RUN mvn install
ENTRYPOINT ["java","-jar","target/forum-app-cap-exec.jar"]