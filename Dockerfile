FROM openjdk:11
COPY . /usr/src/myapp
COPY entrypoint.sh /usr/src/myapp/entrypoint.sh
COPY waiter.jar  /usr/src/myapp/waiter.jar
WORKDIR /usr/src/myapp
CMD ["/bin/bash", "entrypoint.sh"]

#
## Copies your code file from your action repository to the filesystem path `/` of the container
#
## Code file to execute when the docker container starts up (`entrypoint.sh`)
#ENTRYPOINT ["/entrypoint.sh"]
