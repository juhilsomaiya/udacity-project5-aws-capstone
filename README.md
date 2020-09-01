### Project: Capstone (Udacity Cloud DevOps Nanodegree)

### Project overview

- Working in AWS
- Using Jenkins to implement Continuous Integration and Continuous Deployment
- Building pipelines
- Working with CloudFormation to deploy clusters
- Building Kubernetes clusters
- Building Docker containers in pipelines


### This is final output 
- http://a8c5c6b62d7c045378e5c05164b89250-1817186258.ap-south-1.elb.amazonaws.com/


### File Structure 
- build_docker.sh : to build the docker image
- upload_docker.sh : to upload docker image to the docker hub
- Jenkinsfile : to define and work with pipelines
- Makefile: to install hadolint and lint dockerfile
- clusers/: 
     1. config.yaml : creation of a cluster file
     2. deploy.yaml : deployment file
- app/: a project that will render html file on the default home route ("e.g /")
     1. package.json : main configuration file of a node project
     2. index.js : main server file
     3. Dockerfile : dockerfile that consists step of installing dependencies, commands to run an app
     4. static/index.html : html file that will be rendered
     5. start_docker.sh : main command to start application within kubernates cluster
- screenshots: that consistes series of progress of this project 
 
