FROM openjdk:8-jre
VOLUME /tmp
COPY ./target/test-deloitte-0.0.1-SNAPSHOT.jar app.jar
RUN touch app.properties; echo "spring.dataSource.url=jdbc:mysql://mysql-docker-container:3306/test_deloitte?useUnicode=yes&characterEncoding=UTF-8&useSSL=false&autoReconnect=true&failOverReadOnly=false&maxReconnects=10" > app.properties
ENTRYPOINT ["/usr/bin/java","-jar","app.jar", "--spring.profiles.active=local", "--spring.config.additional-location=app.properties"]