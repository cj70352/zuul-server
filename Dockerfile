FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/*.jar zuul-server.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /zuul-server.jar" ]
