# Use an OpenJDK base image
FROM eclipse-temurin:8-jre

# Set a working directory
WORKDIR /app

# Copy the built JAR file into the container
COPY target/plugins-compat-tester-model-0.0.1-SNAPSHOT.jar app.jar

# Default command to run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
