FROM maven:3.8.5-openjdk-17 AS build

WORKDIR /eureka-server
COPY . .
RUN mvn clean install -DskipTests

CMD mvn spring-boot:run