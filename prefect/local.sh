
PROJECT_NAME=prefect-server

# Try Just local image

# Windows OS
docker build  -t ${PROJECT_NAME}-image -f Dockerfile .

# Start container
winpty docker run --rm -it \
--mount type=bind,source="$(PWD)",target=/root/project \
--name ${PROJECT_NAME}-container \
-p 4200:4200 \
--entrypoint bash \
${PROJECT_NAME}-image 

# -p 8032:8032 \
# -p 8080:8080 \
# --memory=12g \
# prefect server start

# prefect server start --log-level DEBUG --host 0.0.0.0

# Enter running container
# winpty docker exec -it real-state-aider-container bash
