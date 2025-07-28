FROM openjdk:17
COPY target/*.jar /app.jar
COPY /home/ubuntu/Medical-master/target/*.jar /app.jar
EXPOSE 8091
ENTRYPOINT ["java", "-jar", "app.jar"]
