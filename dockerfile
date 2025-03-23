# Stage 1: Build the WAR file
FROM maven:3.8.6-openjdk-11 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Stage 2: Deploy to Tomcat
FROM tomcat:9.0-jdk11
COPY --from=build /app/target/Hospital_Management_System_1.war /usr/local/tomcat/webapps/
EXPOSE 8080
RUN sed -i 's/8080/${PORT}/' /usr/local/tomcat/conf/server.xml
CMD ["catalina.sh", "run"]
