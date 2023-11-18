pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps{
            checkout 'scmGit' (branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Faizul04/dev.git']])
        }
    }
    
    stage('Install Dependencies') {
        steps {
            script {
                sh "npm ci"
            }
        }
    }
    
        stage('Build Image') {
            steps {
                 script {
                     sh "chmod +x build.sh"
                     sh "bash ./build.sh"
                 }
            }
        }
        
        stage('Containerizing') {
    steps {
        script {
            sh "docker-compose down"
            sh "docker-compose up -d"
        }
    }
}

            
        stage('Push Image') {
            steps {
                script {
                   withCredentials([usernamePassword(credentialsId: 'Docker_credential', passwordVariable: 'DOCKER_PASSWORD', usernameVariable: 'DOCKER_USERNAME')]) {
                        sh "chmod +x deploy.sh"
                        sh "bash ./deploy.sh"
            }
        }
        }
}
}
}
