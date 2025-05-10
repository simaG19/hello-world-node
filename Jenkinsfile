pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout([
                    $class: 'GitSCM',
                    branches: [[name: '*/dev']],
                    extensions: [],
                    userRemoteConfigs: [
                        [url: 'https://github.com/simaG19/hello-world-node.git']
                    ]
                ])
            }
        }
        stage('Build') {
            steps {
                script {
                    docker.build("hello-world-node:dev")
                }
            }
        }
    }
}
