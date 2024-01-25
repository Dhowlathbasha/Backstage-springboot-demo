# Use a base image with Java pre-installed
FROM openjdk:17-oracle

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/spring-boot-swagger3-sample-0.0.1-SNAPSHOT.jar /app/spring-boot-swagger3-sample-0.0.1-SNAPSHOT.jar

# Specify the default command to run when the container starts
CMD ["java", "-jar", "spring-boot-swagger3-sample-0.0.1-SNAPSHOT.jar"]
