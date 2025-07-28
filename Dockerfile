FROM openjdk:17
COPY target/*.war /app.war
COPY /home/ubuntu/Medical-master/target/*.war /app.war
EXPOSE 8091
ENTRYPOINT ["java", "-jar", "app.jar"]
