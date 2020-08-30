pipeline {
    agent any
    stages {
        
        stage('Build Started'){
            steps{
                sh "echo Building ${env.JOB_NAME} ${env.BUILD_NUMBER}"
            }
        }
        
        stage('Checking and Installing Hadolint'){
            steps{
                sh '''
                    if ! [ -x "$(command -v hadolint)" ]; then
                        echo 'Installing hadolint' >&2
                        make install
                    fi
                '''
            }
        }
        
        stage('Linting Docker File with hadolint'){
            steps{
                sh 'make lint'
            }
        }
        
        stage('Building Docker Image') {
            steps {
                sh '''
						docker build -t imjuhilsomaiya/capstone_project app/
					'''
            }
        }
        
        /* stage('Running Docker Container') {
          steps {
            sh 'docker run -it --rm -d -p 9000:80 --name webserver imjuhilsomaiya/capstone'
          }
        } */
        
        stage('Pushing Docker Image') {
            steps {
                withDockerRegistry([url: "", credentialsId: "docker-id"]) {
                    sh 'bash upload_docker.sh'
                }
            }
        }
        
        stage('Deploying') {
              steps{
                  echo 'Deploying to AWS...'
                  withAWS(credentials: 'capstone', region: 'ap-south-1') {
                      sh "aws eks --region ap-south-1 update-kubeconfig --name udacity-capstone-project"
                      sh "kubectl config use-context arn:aws:eks:ap-south-1:272442762360:cluster/udacity-capstone-project"
                      sh "kubectl apply -f ./clusters/deploy.yaml"
                      sh "kubectl get nodes"
                      sh "kubectl get deployments"
                      sh "kubectl get pod -o wide"
                      sh "kubectl get service/capstone-app"
                }
            }
        }
        
    }
}