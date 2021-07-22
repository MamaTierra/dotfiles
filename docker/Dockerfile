# syntax=docker/dockerfile:1
FROM ubuntu:latest

ENV RUNNING_IN_DOCKER true

RUN apt-get update -y && \
    apt-get upgrade -y

RUN apt-get install -y curl sudo


RUN sh -c "$(curl -fsLS git.io/chezmoi)"

# Setup vnc server
RUN apt-get install -y x11vnc xvfb
RUN mkdir ~/.vnc
RUN x11vnc -storepasswd 1234 ~/.vnc/passwd

CMD v11vnc -create -forever -usepw