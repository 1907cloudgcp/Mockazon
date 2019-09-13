FROM openjdk:8
RUN mkdir app
COPY target/Mockazon-0.0.1-SNAPSHOT.jar app/Mockazon-0.0.1-SNAPSHOT.jar
WORKDIR app
CMD java -jar Mockazon-0.0.1-SNAPSHOT.jar