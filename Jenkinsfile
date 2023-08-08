pipeline {
    agent {
        docker {
                image 'node:16.13.2'
                args '-v ${WORKSPACE}/.cache/:/.cache/:rw --network=host'
            }
    }

    stages {
        
        stage('CHECK VERSION') {
            steps {
                sh 'node -v'
                sh 'yarn -v'
                sh 'pwd'
//                sh 'chmod 0775 .cache/'
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

        stage('BUILD') {
            steps {
                sh "docker build -t wachira90/test-node:v${BUILD_NUMBER} . --no-cache"
            }
        }

        stage('SUCCESS') {
            steps {
                sh "echo BUILD_NUMBER => ${BUILD_NUMBER}"
                sh 'exit'
            }
        }
        
    }
}
