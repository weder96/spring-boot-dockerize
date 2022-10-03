FROM openjdk:11
EXPOSE 8080
# install curl for a health check
RUN apt-get update && apt-get install -y curl
ADD target/spring-boot-docker.jar spring-boot-docker.jar
ENTRYPOINT ["java", "-jar", "spring-boot-docker.jar"]