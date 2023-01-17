
pipeline {
    agent any
    stages {
        stage('Building') {
            steps {
            
                bash '''
                    # run build commands
                    pip install -r requirements.txt
                '''
            }
        }
        stage('Testing') {
            steps {
                bash '''
                    # run test commands
                    python -m unittest
                '''
            }
        }
        stage('Deploying') {
            steps {
                bash '''
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
