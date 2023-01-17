
pipeline {
    agent any
    stages {
        stage('Building') {
            steps {
            
                bat '''
                    virtualenv venv && . venv/bin/activate && pip install -r requirements.txt
                '''
            }
        }
        
    }
    post {
        success {
            bat '''
                ngrok http 8080
            '''
        }
    }
}
