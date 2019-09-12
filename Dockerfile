FROM maven:3.3.9-jdk-8-alpine as build-env
ENV DATABASE_NAME="postgres"
ENV JDBC_SCHEMA="mockazon"
ENV JDBC_URL="35.192.64.159"
ENV JDBC_USERNAME="postgres"
RUN mkdir app
COPY . /app
WORKDIR /app
# RUN mvn install
COPY target/Mockazon-0.0.1-SNAPSHOT.jar target/Mockazon-0.0.1-SNAPSHOT.jar
CMD java -jar target/Mockazon-0.0.1-SNAPSHOT.jar
