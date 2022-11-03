FROM tomcat:10-jdk17

RUN apt-get update && apt-get install -y git
RUN mkdir /code
WORKDIR /code
COPY . /code/