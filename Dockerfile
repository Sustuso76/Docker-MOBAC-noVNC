FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    openjdk-17-jre \
    xvfb x11vnc openbox novnc python3-websockify python3 unzip net-tools \
    && apt-get clean

WORKDIR /opt/mobac

COPY mobac.zip .
RUN unzip mobac.zip && rm mobac.zip

RUN echo '#!/bin/bash\n\
Xvfb :0 -screen 0 1280x720x24 &\n\
sleep 3\n\
export DISPLAY=:0\n\
openbox &\n\
x11vnc -display :0 -forever -nopw -listen localhost -xkb &\n\
sleep 2\n\
websockify --web /usr/share/novnc 8088 localhost:5900 &\n\
java -jar /opt/mobac/Mobile_Atlas_Creator.jar' > /entrypoint.sh

RUN chmod +x /entrypoint.sh

EXPOSE 8088

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]