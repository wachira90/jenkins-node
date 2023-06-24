pipeline {
    agent {
        docker { 
//               image 'node:18.16.0-alpine' 
                image 'docker.io/wachira90/node:16.13.2' 
            }
    }

    stages {
        stage('CHECK NODE VERSION') {
            steps {
                sh 'node --version'
            }
        }
    }

    stages {
        stage('CHECK YARN VERSION') {
            steps {
                sh 'yarn -v'
            }
        }
    }



}
