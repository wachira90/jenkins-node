pipeline {
    agent {
        docker {
                image 'node:16.13.2'
                args '--network=host'
            }
    }

    stages {
        
        stage('CHECK VERSION') {
            steps {
                sh 'node -v'
                sh 'yarn -v'
            }
        }

        stage('DELETE MODULE') {
            steps {
                sh 'rm -rf node_modules/'
                sh 'ls -la'
            }
        }
        
        stage('INSTALL') {
            steps {
                sh 'yarn install'
            }
        }

        stage('CHECK') {
            steps {
                sh 'ls -la'
            }
        }
        
        stage('SUCCESS') {
            steps {
//                sh 'test success $WORKSPACE'
                sh 'exit'
            }
        }
        
    }
}
