FROM openjdk:17-alpine

RUN mkdir -p workspace

COPY ./target/phoneshope-night-0.0.1-SNAPSHOT.jar /workspace

EXPOSE 8888

ENTRYPOINT ["java","-jar","./workspace/phoneshope-night-0.0.1-SNAPSHOT.jar"]
