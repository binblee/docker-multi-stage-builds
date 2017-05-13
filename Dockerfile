FROM java:8 as builder
ADD springboot-app /springboot-app
WORKDIR /springboot-app
RUN ./gradlew build

FROM java:8-jre-alpine
VOLUME /tmp
COPY --from=builder /springboot-app/build/libs/*.jar /app.jar
RUN sh -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
