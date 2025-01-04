FROM maven:3.9.9-eclipse-temurin-17-alpine AS builder
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

FROM openjdk:17-jdk-alpine
COPY --from=builder /home/app/target/*.jar sp-bookstore-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/sp-bookstore-0.0.1-SNAPSHOT.jar"]