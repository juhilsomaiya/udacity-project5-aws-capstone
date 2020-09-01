#!/usr/bin/env bash

# docker path
dockerpath=imjuhilsomaiya/capstone_project_express

echo "Docker ID and Image: $dockerpath"

docker tag imjuhilsomaiya/capstone_project_express imjuhilsomaiya/capstone_project_express:v1

docker push imjuhilsomaiya/capstone_project_express:v1