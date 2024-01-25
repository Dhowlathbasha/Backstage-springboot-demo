#FROM eclipse-temurin:17-jdk-alpine
FROM --platform=$BUILDPLATFORM golang:alpine AS build
ARG TARGETPLATFORM
ARG BUILDPLATFORM
VOLUME /tmp
ARG JAR_FILE
FROM alpine
COPY --from=build /log /log
COPY ${JAR_FILE} spring-boot-swagger3-sample-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/spring-boot-swagger3-sample-0.0.1-SNAPSHOT.jar"]
