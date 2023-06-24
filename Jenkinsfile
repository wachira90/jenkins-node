pipeline {
    agent {
        docker {
                image 'node:16.13.2' 
            }
    }

    stages {
        stage('CHECK NODE VERSION') {
            steps {
                sh 'node --version'
            }
        }
        
        stage('CHECK YARN VERSION') {
            steps {
                sh 'yarn -v'
                sh 'yarn install'
            }
        }

        stage('CHECK ls') {
            steps {
                sh 'ls -la'
            }
        }
        
        stage('SUCCESS') {
            steps {
                sh 'test success $WORKSPACE'   
            }
        }
        
    }
}
