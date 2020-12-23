FROM ubuntu:latest

COPY setup corgit un ./

RUN ./setup
RUN cgit h

CMD [ "cgit" ]