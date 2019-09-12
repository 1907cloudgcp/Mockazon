FROM maven:3.3.9-jdk-8-alpine as build-env
ENV DATABASE_NAME="postgres"
ENV JDBC_SCHEMA="mockazon"
ENV JDBC_URL="104.154.244.24"
ENV JDBC_USERNAME="postgres"
ENV JDBC_PASSWORD="postgres"
COPY . /app
WORKDIR /app
RUN mvn install
# CMD java -jar target/Mockazon-0.0.1-SNAPSHOT.jar
