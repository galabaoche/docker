# Version 1.0.1
From ubuntu:latest
MAINTAINER galabaoche "galabaoche@live.com"
USER root
RUN apt-get update
RUN apt-get install -y nginx
RUN touch test.txt && echo "abc" >> abc.txt
EXPOSE 80 8080 1038
ADD abc.txt /opt/
ADD /webapp /opt/webapp
ADD https://www.baidu.com/img/bd_logo1.png /opt/
ENV WEBAPP_PORT=9090
WORKDIR /opt/
ENTRYPOINT ["ls"]
CMD ["-a","-l"]
VOLUME ["/data","/var/www"]

ONBUILD ADD . /app/src
ONBUILD RUN echo "on build excuted" >> onbuild.txt