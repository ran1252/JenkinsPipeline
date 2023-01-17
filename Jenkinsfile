
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
        
    }
    post {
        success {
            bat '''
                # Use Ngrok to allow access to Jenkins on localhost by GitHub
                ngrok http 8080
            '''
        }
    }
}
