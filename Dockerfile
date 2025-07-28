FROM openjdk:17
COPY target/*.war /app.war
EXPOSE 8091
ENTRYPOINT ["java", "-jar", "/app.war"]
