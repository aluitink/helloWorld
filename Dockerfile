FROM microsoft/aspnet:1.0.0-rc1-update1

COPY global.json /opt/helloWorld/global.json

COPY src/helloWorld.Console /opt/helloWorld/src/helloWorld.Console
WORKDIR /opt/helloWorld/src/helloWorld.Console
RUN ["dnu", "restore"]

COPY src/helloWorld.Console /opt/helloWorld/src/helloWorld.Console

CMD ["dnx", "-p", "project.json", "--configuration", "Debug", "helloWorld.Console"]
