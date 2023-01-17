
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
                    docker build -t myapp .
                    
                    # Push the image to Docker Hub
                    docker run myapp
                '''
            }
        }
        }
        
        
    }
    





