FROM openjdk:8-alpine

ARG VERSION

COPY target/guestbook-0.0.1-SNAPSHOT.jar /app/guestbook.jar

LABEL maintainer="mrsono0<mrsono0@gmail.com>" \
      title="Guestbook App" \
      version="$VERSION" \
      description="guestbook service"

ENV APP_HOME /app
EXPOSE 8080
VOLUME /app/upload

WORKDIR $APP_HOME
ENTRYPOINT ["java"]
CMD ["-jar", "guestbook.jar"]
