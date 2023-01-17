
pipeline {
    agent any
    
    stages {
        stage('Building') {
            steps {
            
                bat '''
                      pip install -r requirements.txt
                 '''

            }
        }
        stage('Testing') {
            steps {
                bat '''
                    pytest
                '''
            }
        }
        environment {
        DOCKER_USERNAME = credentials('DOCKER_USERNAME')
        DOCKER_PASSWORD = credentials('DOCKER_PASSWORD')
        }
         stage('Login to Docker Hub') {
            steps {
                bat '''
                    echo %DOCKER_PASSWORD% | docker login --username %DOCKER_USERNAME% --password-stdin
                '''
            }
        }
        stage('Build and Push') {
            steps {
                bat '''
                    # Build the Docker image
                    docker build -t raniaelh/jenkinsfile .
                    
                    # Push the image to Docker Hub
                    docker run raniaelh/jenkinsfile
                '''
            }
        }
        
    }
    
}




