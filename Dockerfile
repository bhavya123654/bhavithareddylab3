# Base image with Java 8
FROM openjdk:8

# Install Maven
RUN apt-get update && \
    apt-get install -y maven

# Set the JAVA_HOME environment variable
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

# Set the working directory
WORKDIR /usr/src/app

# Copy the project files
COPY . /usr/src/app

# Build the Maven project with the appropriate target release
RUN mvn clean install -Dmaven.compiler.target=1.8 -Dmaven.compiler.source=1.8

# Expose the application port
EXPOSE 8080

# Define the command to run the application
CMD ["java", "-jar", "target/*.jar"]
