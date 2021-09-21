# syntax=docker/dockerfile:1

FROM openjdk:16-alpine3.13

COPY .mnv/ .mvn
COPY mvnw pom.xml ./

RUN ./mvn dependency:go-offline

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]
