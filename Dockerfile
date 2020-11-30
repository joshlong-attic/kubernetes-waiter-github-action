FROM openjdk:11.0.9.1-jdk-buster

COPY . /work
COPY entrypoint.sh /work/entrypoint.sh
COPY waiter.jar  /work/waiter.jar
WORKDIR /work
CMD ["/work/entrypoint.sh"]
