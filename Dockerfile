FROM ubuntu:latest

RUN cp corgit /usr/bin
RUN echo alias cgit="bash corgit" >> .