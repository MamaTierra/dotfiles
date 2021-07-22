# This docker purpose is to test my chezmoi config

## Steps
```
# Build docker image from dockerfile
docker build -t chezmoisetup:v1.0.0 .

# Create name and bash container
docker run --name "container_chezmoi" -it -p 5900:5900 chezmoisetup:v1.0.0 /bin/bash

# Start container
docker stop container_chezmoi

# Delete container
docker rm container_chezmoi

# Start container
docker start container_chezmoi

# Bash container
docker exec -it container_chezmoi bash
```