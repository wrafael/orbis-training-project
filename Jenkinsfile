pipeline {
    agent any

    stages {
        stage('Build') {
            steps {

                sh 'make build && make install'
            }
        }
        stage('Test') {
            steps {
                sh 'make start'
            }
        }
        stage('Deploy') {
            steps {
                sh 'make release && make deploy.ghpages'
            }
        }
    }
}