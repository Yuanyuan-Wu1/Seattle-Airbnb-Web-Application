FROM maven:3.8.4-openjdk-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

FROM tomcat:9.0-jdk17
# 删除默认的ROOT应用
RUN rm -rf /usr/local/tomcat/webapps/ROOT
# 将我们的应用部署为ROOT应用
COPY --from=build /app/target/Seattle-Airbnb-Web-Application.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]