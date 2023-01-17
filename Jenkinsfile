
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
                    docker image build -t myapp .
                    
                    # Push the image to Docker Hub
                    docker run -p 5000:5000 -d myapp
                '''
            }
        }
        }
        
        
    }
    





