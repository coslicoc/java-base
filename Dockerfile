FROM amazoncorretto:11-al2023-jdk@sha256:731c45b6f5245537ccd8a764a810af83dc4a5f0cac3349c13d49555b1ae341cc

LABEL description="Base Docker image with Java 11"

WORKDIR /app

CMD ["java", "-version"]
