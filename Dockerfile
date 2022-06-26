#FROM openjdk:8
#VOLUME /tmp
#EXPOSE 8761
#ADD target/service-registry-0.0.1.jar service-registry-0.0.1.jar
#ENTRYPOINT ["java","-jar","/service-registry-0.0.1"]
FROM openjdk:8
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} service-registry-0.0.1.jar
ENTRYPOINT ["java","-jar","/service-registry-0.0.1.jar"]
EXPOSE 8761

