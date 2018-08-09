# Dockerfile

FROM openjdk:8-jre-slim

ENV TZ Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone

EXPOSE 8080

RUN ls -al target

WORKDIR data

COPY target/*.jar /data/ROOT.jar

CMD ["java", "-jar", "ROOT.jar"]
