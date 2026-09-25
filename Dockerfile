FROM scottyhardy/docker-wine:latest
USER root
WORKDIR /app
COPY . /app

# Force the emulator to run headlessly without a monitor screen
ENV DISPLAY=:0
ENV WINEDEBUG=-all

EXPOSE 2056 2057 2059

# This script passes '5' to the menu automatically to force start the server backend
CMD ["sh", "-c", "echo '5' | wine RebornRec.exe"]
