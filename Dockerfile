FROM openjdk:17-jdk-alpine
COPY target/sp-bookstore-0.0.1-SNAPSHOT.jar sp-bookstore-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/sp-bookstore-0.0.1-SNAPSHOT.jar"]