FROM ubuntu:latest

ENV TZ=Asia/Seoul

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install openssh-client -y

COPY run.sh /

CMD ["/run.sh"]
