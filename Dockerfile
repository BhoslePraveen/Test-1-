
FROM openjdk:21-jdk-slim

# Set working directory
WORKDIR /app

# Copy the jar file (adjust the name to match your jar)
COPY target/*.jar app.jar

# Expose the port your Spring Boot app runs on (default 8080)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]