pipeline {
    agent any

    environment {
        DOCKER_HUB_REPO = 'shahidkhan777/indiyano-webapp'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/ShahidKhan48/indiyano-webapp.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${DOCKER_HUB_REPO}:latest")
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'docker-hub-credentials-id') {
                        docker.image("${DOCKER_HUB_REPO}:latest").push()
                    }
                }
            }
        }

        stage('Deploy Container') {
            steps {
                sh '''
                docker stop indiyano-web || true
                docker rm indiyano-web || true
                docker run -d -p 80:80 --name indiyano-web ${DOCKER_HUB_REPO}:latest
                '''
            }
        }
    }
}
