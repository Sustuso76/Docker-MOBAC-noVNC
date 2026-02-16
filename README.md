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

1. **Clone the repository**:
   ```bash
   git clone [https://github.com/YOUR_USERNAME/mobac-docker-novnc.git](https://github.com/YOUR_USERNAME/mobac-docker-novnc.git)
   cd mobac-docker-novnc
