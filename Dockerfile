FROM eclipse-temurin:11
# RUN mkdir /opt/app
# COPY japp.jar /opt/app
# CMD ["java", "-jar", "/opt/app/japp.jar"]
EXPOSE 8080
ADD microservicio-spring.jar /app/microservicio-spring.jar
WORKDIR /app
CMD java -jar microservicio-spring.jar

# FROM openjdk:8-jdk-alpine
# VOLUME /tmp
# ARG JAVA_OPTS
# ENV JAVA_OPTS=$JAVA_OPTS
# COPY build/libs/microservicio-spring-0.0.1-SNAPSHOT.jar microserviciospring.jar
# EXPOSE 8080
# ENTRYPOINT exec java $JAVA_OPTS -jar microserviciospring.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar microserviciospring.jar
