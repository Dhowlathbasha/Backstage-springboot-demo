FROM openjdk:17
ADD target/spring-boot-swagger3-sample-0.0.1-SNAPSHOT.jar spring-boot-swagger3-sample-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/spring-boot-swagger3-sample-0.0.1-SNAPSHOT.jar"]
