FROM docker.io/java:8-jre-alpine

COPY target/test-0.0.1-SNAPSHOT.jar /app/test-0.0.1-SNAPSHOT.jar

WORKDIR /app

ENTRYPOINT ["java", "-jar","test-0.0.1-SNAPSHOT.jar"]