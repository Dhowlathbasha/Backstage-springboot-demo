FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} spring-boot-swagger3-sample-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/spring-boot-swagger3-sample-0.0.1-SNAPSHOT.jar"]
