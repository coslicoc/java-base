FROM eclipse-temurin:11-jdk

LABEL description="Base Docker image with Java 11"

WORKDIR /app

CMD ["java", "-version"]