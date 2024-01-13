# Start from a base image with Java installed
FROM openjdk:latest

# Make port 8080 available to the world outside this container
EXPOSE 443

# The application's jar file
ARG JAR_FILE=Lavalink.jar

# Add the application's jar to the container
ADD ${JAR_FILE} Lavalink.jar

# Run the jar file 
ENTRYPOINT ["java", "-jar", "Lavalink.jar"]
