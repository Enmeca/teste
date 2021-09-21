# syntax=docker/dockerfile:1

FROM openjdk:14-windowsservercore
COPY pom.xml ./

RUN mvn dependency:go-offline

COPY src ./src

CMD ["mvn", "spring-boot:run"]
