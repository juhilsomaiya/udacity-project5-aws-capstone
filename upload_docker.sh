#!/usr/bin/env bash

# docker path
dockerpath=imjuhilsomaiya/udacity_express_project

echo "Docker ID and Image: $dockerpath"

docker tag imjuhilsomaiya/udacity_express_project imjuhilsomaiya/udacity_express_project:v1

docker push imjuhilsomaiya/udacity_express_project:v1