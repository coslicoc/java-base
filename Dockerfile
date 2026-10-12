FROM eclipse-temurin:11-jre-jammy

WORKDIR /app

ENV JAVA_OPTS="-XX:MaxRAMPercentage=75.0 \
               -XX:+ExitOnOutOfMemoryError \
               -XX:+UseContainerSupport \
               -Djava.security.egd=file:/dev/./urandom"

COPY target/app.jar /app/app.jar

USER 1000

EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=3s --start-period=40s --retries=3 \
  CMD wget -qO- http://localhost:8080/actuator/health || exit 1

ENTRYPOINT ["sh", "-c", "exec java $JAVA_OPTS -jar /app/app.jar"]