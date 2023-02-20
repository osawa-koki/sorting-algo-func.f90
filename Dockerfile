FROM ubuntu:latest
RUN apt update && \
    apt install gfortran make -y
WORKDIR /app
COPY Makefile ./
COPY ./src ./src
COPY ./bin ./bin
RUN make
CMD ["./bin/main"]
