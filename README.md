# Client-Cd-109 Log Forwarding Service

This service automatically forwards server logs from the `/var/log/` directory to the central logging server. It's designed to be flexible for both Docker and non-Docker environments.

## Prerequisites

For Docker users:
- Docker
- Docker Compose

For non-Docker users:
- OpenJDK 11
- Logstash

## Quick Start (Docker Users)

1. Clone the repository:
   ```bash
   git clone https://github.com/softwares-compound/Client-Cd-109.git
   ```

2. Copy .env.example to .env and set the required variables:

3. Run the Docker Compose file:
   ```bash
   docker-compose up -d
   ```
The logs will be forwarded to the Cadmium server automatically.

## Quick Start (Non-Docker Users)

For users who don't have Docker, you can set up the log forwarding service with a single script.

Run the following one-click command to install the necessary dependencies and set up Logstash:

```bash
curl -s https://raw.githubusercontent.com/softwares-compound/Client-Cd-109/main/setup-log-forwarding.sh | bash
```

The script will set up Logstash and configure it to forward logs from `/var/log/` to the Cadmium server.