FROM eclipse-temurin:17-jre-focal
LABEL org.opencontainers.image.authors="ishinvin26@gmail.com"
ENV JAVA_OPTS=""
COPY build/libs/*.jar /app.jar
EXPOSE 8761
CMD java ${JAVA_OPTS} -Djava.security.egd=file:/dev/./urandom -jar /app.jar