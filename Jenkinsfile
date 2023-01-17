
pipeline {
    agent any
    stages {
        stage('Building') {
            steps {
            
                bat '''
                      pip install -r requirements.txt
                 '''

            }
        }
        stage('Testing') {
            steps {
                bat '''
                    pytest
                '''
            }
        }
        
    }
    
}
