FROM registry.access.redhat.com/ubi8/ubi:latest

WORKDIR /deployment/

COPY /target/*-runner /deployment/app

RUN chmod 775 /deployment

EXPOSE 8082
USER 1001

ENTRYPOINT [ "./app","-Dquarkus.http.host=0.0.0.0"]
