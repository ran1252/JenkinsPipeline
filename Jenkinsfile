
pipeline {
    agent any
    stages {
        stage('Building') {
            steps {
            
                bat '''
                    pip install --user -r requirements.txt
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
