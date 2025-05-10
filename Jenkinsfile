pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'dev', url: 'https://github.com/simaG19/hello-world-node.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("hello-world-node:dev")
                }
            }
        }
        stage('Test') {
            steps {
                sh 'docker run hello-world-node:dev npm test'
                // Note: You'll need actual tests later
            }
        }
        stage('Archive') {
            steps {
                archiveArtifacts artifacts: '**/*.js,**/*.json,Dockerfile', fingerprint: true
            }
        }
    }
}