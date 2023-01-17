
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
        stage('Deploying') {
            steps {
                sh '''
                    # build the Docker image
                    docker build -t raniaelh/JenkinsImage .
                    # run the Docker container
                    docker run -p 5000:5000 raniaelh/JenkinsImage
                '''
            }
        }
        
    }
    
}
