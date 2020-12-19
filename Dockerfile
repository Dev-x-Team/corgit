FROM ubuntu:latest

COPY setup .

RUN bash setup
