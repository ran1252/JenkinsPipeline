
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
                    docker image build -t myapp .
                    
                    docker run -p 5000:5000 -d myapp
                '''
            }
        }
        }
        
        
    }
    





