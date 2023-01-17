
pipeline {
    agent any
    stages {
        stage('Building') {
            steps {
                git branch: 'main', url: 'https://github.com/ran1252/JenkinsPipeline.git'  
                sh '''
                    # run build commands
                    pip install -r requirements.txt
                '''
            }
        }
        stage('Testing') {
            steps {
                sh '''
                    # run test commands
                    python -m unittest
                '''
            }
        }
        stage('Deploying') {
            steps {
                sh '''
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
            sh '''
                # Use Ngrok to allow access to Jenkins on localhost by GitHub
                ngrok http 8080
            '''
        }
    }
}
