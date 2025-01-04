FROM maven:3.6.0-jdk-17-slim AS builder
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

FROM openjdk:17-jdk-alpine
COPY --from=builder /home/app/target/*.jar sp-bookstore-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/sp-bookstore-0.0.1-SNAPSHOT.jar"]