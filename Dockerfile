FROM eclipse-temurin:17-jre-focal
LABEL org.opencontainers.image.authors="ishinvin26@gmail.com"
ENV JAVA_OPTS ""

COPY build/libs/*.jar /app.jar

RUN echo "java -jar \$JAVA_OPTS -Djava.security.egd=file:/dev/./urandom /app.jar" > /start-boot.sh
RUN chmod +x /start-boot.sh

HEALTHCHECK --interval=30s --timeout=30s --retries=5 CMD curl -f http://localhost:8761/actuator/health || false
EXPOSE 8761
CMD ["sh", "/start-boot.sh"]