FROM openjdk:8-jdk-alpine

LABEL maintainer="bhavitha"

VOLUME /tmp

COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]
