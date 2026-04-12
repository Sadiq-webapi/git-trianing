FROM maven:3.9-eclipse-temurin-21 AS builder
WORKDIR /app

# 1. Copy the pom.xml from your root
COPY pom.xml .

# 2. Copy the source code
COPY src ./src

# 3. Run the build (now it will find the pom)
RUN mvn clean package -DskipTests

# 4. Final Stage: Create the small runner image
FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
