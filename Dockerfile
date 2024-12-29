# Use an official OpenJDK runtime as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container's working directory
COPY target/jb-hello-world-maven-0.2.0.jar /app/app.jar

# Command to run the JAR file
CMD ["java", "-jar", "app.jar"]
