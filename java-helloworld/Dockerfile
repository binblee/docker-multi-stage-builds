FROM java:8 as builder
WORKDIR /app
ADD HelloWorldExample.java /app
RUN javac *.java

FROM java:8-jre-alpine
WORKDIR /app
COPY --from=builder /app/*.class /app
ENTRYPOINT ["java","-cp",".","HelloWorldExample"]
