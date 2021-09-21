# syntax=docker/dockerfile:1

FROM openjdk:16-alpine3.13
COPY pom.xml ./

CMD ["mvn", "dependency:go-offline"]

COPY src ./src

CMD ["mvn", "spring-boot:run"]
