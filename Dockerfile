FROM scottyhardy/docker-wine:latest
USER root
WORKDIR /app
COPY . /app
EXPOSE 2056 2057 2059
CMD ["wine", "RebornRec.exe", "--start-server"]
