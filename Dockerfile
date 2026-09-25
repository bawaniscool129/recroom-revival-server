FROM scottyhardy/docker-wine:latest
USER root
WORKDIR /app
COPY . /app

# Force container to bypass missing network parameters
ENV WINEDEBUG=-all

EXPOSE 2056 2057 2059

# Command to bypass the menu selection and boot directly into hosting
CMD ["wine", "RebornRec.exe", "5"]
