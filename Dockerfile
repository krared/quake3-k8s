FROM ubuntu:20.04
RUN apt-get update && apt install -y  libsdl2-mixer-2.0-0 libsdl2-image-2.0-0 libsdl2-2.0-0  && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean autoclean && \
    apt-get autoremove --yes && \
    rm -rf /var/lib/{apt,dpkg,cache,log} && \
    adduser --disabled-password --gecos '' quake
ADD --chown=quake app /app
USER quake
EXPOSE 27960
WORKDIR /app/
# CMD '/app/ioq3ded.x86_64'