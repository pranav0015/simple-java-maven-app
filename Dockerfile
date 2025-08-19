FROM openjdk:26-trixie
EXPOSE 8080
WORKDIR /usr/app
COPY ./target/my-app-1.0-SNAPSHOT.jar .
ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
