
pipeline {
    agent any
    stages {
        stage('Building') {
            steps {
                git branch: 'master', url: 'https://github.com/<username>/<repo>.git'
                sh '''
                    # run build commands
                    pip install -r requirements.txt
                    python app.py install
                '''
            }
        }
        stage('Testing') {
            steps {
                sh '''
                    # run test commands
                    pytest
                '''
            }
        }
        stage('Deploying') {
            steps {
                sh '''
                    # build the Docker image
                    docker build -t <image_name> .
                    # run the Docker container
                    docker run -p 5000:5000 <image_name>
                '''
            }
        }
    }
    post {
        success {
            sh '''
                # Use Ngrok to allow access to Jenkins on localhost by GitHub
                ngrok http <jenkins_port>
            '''
        }
    }
}
