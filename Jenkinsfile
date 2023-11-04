pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps{
            checkout 'scmGit'(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Faizul04/Demo.git']])
        }
    }
    
        stage('Build Image') {
            steps {
                 script {
                     sh "chmod +x build.sh"
                     sh "./build.sh"
                     sh "docker run -d -p 8000:80 reactapp"
                 }
            }
            }
            
        stage('Push Image') {
            steps {
                script {
                    withCredentials([string(credentialsId: 'Docker-registry', variable: 'DOCKERKEY')]) {
                        sh "echo $DOCKERKEY"
                        sh "docker tag 7aa7bd3df993 faizul04/reactapp:latest"
                        sh "docker login -u faizulfaity3@gmail.com -p Devops@7890 docker.io"
                        sh "docker push faizul04/reactapp:latest"
            }
        }
        }
}
}
}
   
