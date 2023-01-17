
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
    





