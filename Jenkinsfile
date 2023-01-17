
pipeline {
    agent any
    stages {
        stage('Building') {
            steps {
            
                bat '''
                      C:\Users\Rania\AppData\Local\Programs\Python\Python310\Scripts\pip.exe install -r requirements.txt
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
