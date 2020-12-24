FROM ubuntu:latest

COPY setup cgit un ./

RUN ./setup
RUN bash cgit -h

CMD [ "cgit -h" ]