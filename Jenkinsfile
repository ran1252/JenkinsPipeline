
pipeline {
    agent any
    stages {
        stage('Building') {
            steps {
            
                bat '''
                    # run build commands
                    pip install -r requirements.txt
                '''
            }
        }
        stage('Testing') {
            steps {
                bat '''
                    # run test commands
                    python -m unittest
                '''
            }
        }
        stage('Deploying') {
            steps {
                bat '''
                    # build the Docker image
                    docker build -t jenkinsimage .
                    # run the Docker container
                    docker run -p 5000:5000 jenkinsimage
                '''
            }
        }
    }
    post {
        success {
            bash '''
                # Use Ngrok to allow access to Jenkins on localhost by GitHub
                ngrok http 8080
            '''
        }
    }
}
