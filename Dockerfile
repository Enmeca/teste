# syntax=docker/dockerfile:1

FROM "openjdk:14-windowsservercore-ltsc2016"

COPY .mvn/ .mvn
COPY mvnw pom.xml ./

RUN chmod +x mvnw
RUN ./mvnw dependency:go-offline

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]
