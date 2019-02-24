FROM bobcrutchley/steam-server:latest
USER root
RUN mkdir /home/steam/killing-floor-2
RUN chown -R steam:steam /home/steam/killing-floor-2
USER steam
COPY ./install.steamcmd .
COPY ./init .
EXPOSE 7777/udp
EXPOSE 27015/udp
EXPOSE 8080/tcp
ENTRYPOINT ["/home/steam/init"]
