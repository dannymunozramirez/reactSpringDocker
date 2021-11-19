FROM openjdk:11
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=target/ikigai_app-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} ikigai_app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/ikigai_app.jar"]