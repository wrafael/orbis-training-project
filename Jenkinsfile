pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'make jenkins-workspace'
                sh 'make jenkins-install'
            }
        }
        stage('Test') {
            steps {
                sh 'make jenkins-start'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo release'
                sh 'echo deploy.ghpages'
            }
        }
    }
}