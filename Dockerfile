# Use an official OpenJDK image as the base image
FROM openjdk:17-jdk-alpine

# Create a directory in the container where the app will be copied
WORKDIR /app

# Copy the built JAR file from the host to the container
COPY target/react-and-spring-data-rest-0.0.1-SNAPSHOT.jar /app/react-and-spring-data-rest-0.0.1-SNAPSHOT.jar

# Expose the application's port (for Spring Boot typically 8080)
EXPOSE 8080

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app/react-and-spring-data-rest-0.0.1-SNAPSHOT.jar"]