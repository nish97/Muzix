FROM openjdk:13-jdk-alpine
VOLUME /tmp
#ARG JAR_FILE
COPY target/muzix-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]