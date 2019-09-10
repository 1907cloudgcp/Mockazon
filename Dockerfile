FROM maven:3.3.9-jdk-8-alpine as build-env
# ENV DATABASE_NAME="mockazon"
# ENV JDBC_SCHEMA=""
# ENV JDBC_URL=""
# ENV JDBC_USERNAME=""
# ENV JDBC_PASSWORD=""
COPY . /app
WORKDIR /app
RUN mvn install
CMD java -jar target/Mockazon-0.0.1-SNAPSHOT.jar 