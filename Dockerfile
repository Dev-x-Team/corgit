FROM ubuntu:latest

COPY setup cgit un ./

RUN ./setup
RUN bash cgit -h
RUN bash cgit -dv

CMD [ "cgit -h", "cgit -dv" ]