# syntax=docker/dockerfile:1

FROM openjdk:14-windowsservercore-ltsc2016
COPY pom.xml ./

RUN mvn dependency:go-offline

COPY src ./src

CMD ["mvn", "spring-boot:run"]
