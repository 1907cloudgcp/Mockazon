FROM openjdk:8
ENV DATABASE_NAME="postgres"
ENV JDBC_SCHEMA="mockazon"
ENV JDBC_URL="35.192.64.159"
ENV JDBC_USERNAME="postgres"
RUN mkdir app
COPY target/Mockazon-0.0.1-SNAPSHOT.jar app/Mockazon-0.0.1-SNAPSHOT.jar
WORKDIR app
CMD ["java", "-jar", "Mockazon-0.0.1-SNAPSHOT.jar"]