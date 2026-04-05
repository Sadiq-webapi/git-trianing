FROM maven:3.9.9-eclipse-temurin-21-slim

WORKDIR /app
COPY . .

RUN mvn clean package

CMD ["java", "-jar", "target/yourapp.jar"]
