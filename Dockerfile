# Use OpenJDK 21 as the base image
FROM eclipse-temurin:21-jdk

# Set working directory
WORKDIR /app

# Copy the entire project
COPY . .

# List files to debug
RUN ls -la

# Install dos2unix
RUN apt-get update && apt-get install -y dos2unix

# Fix line endings and set permissions for mvnw
RUN dos2unix mvnw && \
    chmod +x mvnw && \
    ls -la mvnw

# Generate Maven wrapper if it doesn't exist
RUN if [ ! -f "mvnw" ]; then \
    apt-get install -y maven && \
    mvn -N io.takari:maven:wrapper && \
    chmod +x mvnw; \
    fi

# List files again to verify
RUN ls -la

# Expose port 3000
EXPOSE 3000

# Run the application
CMD ["./mvnw", "spring-boot:run", "-Dspring-boot.run.arguments=--server.port=3000"]