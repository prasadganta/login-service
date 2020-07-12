
# For Java 8, try this
FROM openjdk:8-jdk

# Refer to Maven build -> finalName
ARG JAR_FILE=target/login-service-0.0.1-SNAPSHOT.jar

# cd /opt/app
WORKDIR /opt/app

# cp target/login-service-0.0.1-SNAPSHOT.jar /opt/app/app.jar
COPY ${JAR_FILE} login-service.jar

# java -jar /opt/app/login-service.jar
ENTRYPOINT ["java","-jar","login-service.jar"]