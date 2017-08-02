FROM openjdk:8-jre-alpine
VOLUME /tmp
ADD build/libs/test-app-0.0.0.jar app.jar
CMD [ "sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]