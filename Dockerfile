#
# Build stage
#
FROM maven:3.8.1-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

#
# Package stage
#
FROM openjdk:11
RUN apt-get update && apt-get upgrade
COPY --from=build /home/app/target/thin/root/apache-camel-engine.jar /usr/local/lib/apache-camel-engine/apache-camel-engine.jar

WORKDIR /usr/local/lib/apache-camel-engine/
#EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/apache-camel-engine/apache-camel-engine.jar","--thin.root=.","--thin.trace=true","--thin.location=file:.,classpath:.","--thin.compute=true"]