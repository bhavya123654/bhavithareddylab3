# Base image with Java 8
FROM java:8
# Expose the application port
EXPOSE 8080
ADD /target/lab3-1.0-SNAPSHOT.jar lab3-1.0-SNAPSHOT.jar
# Define the command to run the application
CMD ["java", "-jar", "lab3-1.0-SNAPSHOT.jar"]
