FROM ubuntu:20.10 AS base
RUN apt update && apt install wget -y 
WORKDIR /tmp
RUN wget https://downloads.apache.org/maven/maven-3/3.8.1/binaries/apache-maven-3.8.1-bin.tar.gz
RUN tar -xzf apache-maven-3.8.1-bin.tar.gz && rm apache-maven-3.8.1-bin.tar.gz

FROM enakamura/oraclejdk:7u80
COPY --from=base /tmp /opt
ENV PATH=$PATH:/opt/apache-maven-3.8.1/bin
ENV MAVEN_OPTS=-Dhttps.protocols=TLSv1,TLSv1.1,TLSv1.2