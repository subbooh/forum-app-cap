from mhart/alpine-node:latest
 
WORKDIR /root
COPY . .
RUN sh setup-env.sh
RUN mvn install
# ENTRYPOINT java -jar srv/target/forum-app-cap-exec.jar --server.port=$PORT