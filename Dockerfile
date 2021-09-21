# syntax=docker/dockerfile:1

FROM openjdk:16-alpine3.13
COPY pom.xml ./

RUN mvn dependency:go-offline

COPY src ./src

CMD ["mvn", "spring-boot:run"]
