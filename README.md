# Client-Cd-109 Log Forwarding Service

This service automatically forwards server logs from the /var/log/ directory to the central logging server. It's containerized using Docker for easy installation and setup.

## Prerequisites
- Docker
- Docker Compose

## Quick Start

1. Clone the repository:
   ```bash
   git clone https://github.com/softwares-compound/Client-Cd-109.git
   ```

2. Copy .env.example to .env and set the required variables:
   ```bash
   cp .env.example .env
   ```

3. Run the Docker Compose file:
   ```bash
   docker-compose up -d
   ```

The logs will be forwarded to the central server automatically.
