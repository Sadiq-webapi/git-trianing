FROM openjdk:21-slim
WORKDIR /app
COPY . .
RUN javac Main.java
CMD ["java", "Main"]
