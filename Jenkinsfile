
pipeline {
    agent any
    stages {
        stage('Building') {
            steps {
            
                bat '''
                    sh 'echo "building the repo"'
                    # run build commands
                    pip install -r requirements.txt
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
