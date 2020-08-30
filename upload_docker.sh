#!/usr/bin/env bash


dockerpath=imjuhilsomaiya/capstone_project

echo "Docker ID and Image: $dockerpath"

docker tag imjuhilsomaiya/capstone_project imjuhilsomaiya/capstone_project:v1

docker push imjuhilsomaiya/capstone_project:v1