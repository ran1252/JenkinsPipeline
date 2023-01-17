
pipeline {
    agent any
    stages {
        stage('Building') {
            steps {
            
                bat '''
                      C:\\Python\\Python38\\Scripts\\pip.exe install -r requirements.txt
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
