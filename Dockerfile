FROM tomcat:9-jdk17
COPY target/Hospital_Servlet1.war /usr/local/tomcat/webapps/hospital.war
EXPOSE 8081
