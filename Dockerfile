########################
# NOTE
########################
# - install docker on local machine
# - link: https://docs.docker.com/get-docker/


########################
# local terminal
# -- dont put this on dockerfile
########################

## BUILD REPO ##
# > docker build -t repo_name:1.0.0 ./current_directory
# repo_name:<tag> <directory>

## DISPLAY IMAGES(local) ##
# > docker images

## DISPLAY ACTIVE CONTAINER ##
# > docker ps

## RUN REMOTE REPO ##
# >  docker run -p 9000:9000 repo_name:1.0.0
# docker run -p <custom port>:<origin port(set)> <repo name>


########################
# Dockerfile config
########################

# OS runtime ENV
FROM node:alpine

# Cleanup existing directory
RUN rm -rf /app

# Create new directory
RUN mkdir -p /app

# Go to
WORKDIR /app

# Copy the current directory . in the project to the workdir . in the image.
COPY app.js /app

# run -- node app.js
# command, file
CMD ["node","app.js"]


