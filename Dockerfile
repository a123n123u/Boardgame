FROM adoptopenjdk/maven-openjdk11:latest AS stage-1
WORKDIR /data
COPY . .
RUN mvn package

FROM adoptopenjdk/openjdk11:alpine
WORKDIR /app
COPY --from=stage-1 /data/target/*.jar ./app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
