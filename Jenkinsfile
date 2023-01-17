
pipeline {
    agent any
    
    stages {
        // Here i am installing all dependencies needed to run the app
        stage('Building') {
            steps {
            
                bat '''
                      pip install -r requirements.txt
                 '''

            }
        }
        stage('Testing') {
              //Testing the app
            steps {
                bat '''
                    pytest
                '''
            }
        }
        
        stage('Deploying') {
            steps {
                bat '''
                    // Build docker image <app-jen>
                    docker build -t app-jen .
                    //Run a docker container from the image
                    docker run -p 5000:5000 -d app-jen
                '''
            }
        }
        }
        
        
    }
    





