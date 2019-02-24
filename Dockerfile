FROM bobcrutchley/steam-server:latest
COPY ./install.steamcmd .
COPY ./init .
EXPOSE 7777/udp
EXPOSE 27015/udp
EXPOSE 8080/tcp
ENTRYPOINT ["/home/steam/init"]
