FROM tomcat:10-jdk17

ADD tomcat-users.xml /usr/local/tomcat/conf/
ADD context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

RUN apt-get update && apt-get install -y git
RUN mkdir /code
WORKDIR /code
COPY . /code/