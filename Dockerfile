# Stage 1: Build stage
FROM maven:3.9-eclipse-temurin-21 AS builder
WORKDIR /app

# 1. Copy only the pom.xml first to leverage Docker cache for dependencies
COPY pom.xml .

# 2. Download dependencies (this layer is cached unless pom.xml changes)
RUN mvn dependency:go-offline -B

# 3. Copy the source code and build the application
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Runtime stage (the "small runner image")
FROM eclipse-temurin:21-jre-jammy
WORKDIR /app

# 4. Copy the compiled .jar from the builder stage
# Replace 'my-app-1.0.0.jar' with your actual artifact name
COPY --from=builder /app/target/*.jar app.jar

# 5. Run the application
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
