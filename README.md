# Docker MOBAC noVNC

A lightweight Dockerized environment for **Mobile Atlas Creator (MOBAC)** accessible via any web browser.



## Features
- **Zero Install**: No Java or VNC client needed on the host machine.
- **Web Access**: Access the GUI via browser on port `8088`.
- **Persistence**: Maps and custom sources are stored on your host machine.
- **Optimized**: Includes a health check for the virtual display server (Xvfb).

## Prerequisites
- [Docker](https://www.docker.com/get-started) installed on your system.

## Quick Start

1. Clone the repository or download Dockerfile
  ```bash
  git clone https://github.com/Sustuso76/Docker-MOBAC-noVNC.git
  ```
3. Download latest MOBAC file from https://sourceforge.net/projects/mobac/ and save it mobac.zip
4. Build the image:
   ```bash
   docker build -t mobac-novnc .
5. Run the container:
   Replace C:/MappeMobac with your actual local path and change port 8088 if you need
   ```bash
   docker run -d \
   -p 8088:8088 \
   --name mobac-container \
   -v "C:/MappeMobac/atlases:/opt/mobac/atlases" \
   -v "C:/MappeMobac/mapsources:/opt/mobac/mapsources" \
     mobac-novnc
6. Open in Browser:
Navigate to: http://localhost:8088/vnc.html

Configuration
Port: Change the host port in the docker run command (e.g., -p 9000:8088).

Map Sources: 
Add your custom .xml maps to the local mapsources folder and reload sources or restart container
   ```bash
    docker cp pathtoyourfile.xml mobac-container:/opt/mobac/mapsources/    
