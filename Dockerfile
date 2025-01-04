FROM openjdk:17-jdk-alpine
COPY /home/runner/.m2/repository/io/datatesseract/sp-bookstore/0.0.1-SNAPSHOT/sp-bookstore-0.0.1-SNAPSHOT.jar sp-bookstore-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/sp-bookstore-0.0.1-SNAPSHOT.jar"]