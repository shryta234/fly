FROM ubuntu:18.04 

#RUN apt-get update 

ENV WELCOME_MESSAGE="Welcome to Docker World" 

ARG WELCOME_USER=Shruti 

RUN echo "Welcome $WELCOME_USER, to Docker World!" > message2.txt 

RUN apt-get update && \ 

    apt-get install -y openjdk-8-jdk && \ 

    apt-get install -y python && \ 

    mkdir ritu5 && \ 

    cp message2.txt /ritu5 && \ 

    apt-get install -y git && \  

    apt-get install -y ruby;  

CMD ls && \ 

    whoami;

COPY hello.sh /hello.sh 

CMD ["./hello.sh"] 
