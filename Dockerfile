FROM openjdk:11-jre

EXPOSE 8080

ADD source dest

WORKDIR /the/workdir/path

CMD [ "executable" ]