pipeline {
    agent any
    //agent {
        // docker {
        //         image 'node:16.13.2'
        //         args '-v ${WORKSPACE}/.cache/:/.cache/:rw --network=host'
        //     }
    //}

    environment {
    //     ECR_STAGE       = 'dev'
    //     ECR_NAME        = 'opa_front'
    //     ECR_URL         = "wachira90/test-node:v${BUILD_NUMBER}"
        GIT_PATH        = '/home/ubuntu/.jenkins/workspace/node16/'
    }

    
    stages {

        stage('GIT PULL') {
            steps {
                ws("${env.GIT_PATH}"){
                    sh 'date'
                    sh 'git pull'
                    sh 'ls -la'
                }
            }
        }

        // stage('CHECK VERSION') {
        //     steps {
        //         sh 'node -v'
        //         sh 'yarn -v'
        //         sh 'pwd'
        //     }
        // }

        // stage('DELETE MODULE') {
        //     steps {
        //         sh 'rm -rf node_modules/'
        //         sh 'ls -la'
        //     }
        // }
        
        // stage('INSTALL') {
        //     steps {
        //         sh 'yarn install'
        //     }
        // }

        stage('CHECK') {
            steps {
                ws("${env.GIT_PATH}"){
                    sh 'ls -la'
                }
            }
        }

        stage('BUILD') {
            steps {
                ws("${env.GIT_PATH}"){
                sh "docker build -t wachira90/test-node:v${BUILD_NUMBER} . --no-cache"
                }
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
