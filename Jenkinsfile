pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git credentialsId: 'PraveenPattabiraman', url: 'https://github.com/PraveenPattabiraman/jenkins2.git'
            }
        }
        stage ('build') {
            steps {
                sh "docker build -t httpd:v1 ."
            }
        }
        stage ('converting into container') {
            steps {
                sh "docker run -itd --name httpdcontainer -p '8090:80' httpd:v1"
            }
        }
        stage ('removing the container') {
            steps {
                sh "docker rm -f \$(docker ps -q) && docker rmi \$(docker images)"
            }
        }

    }
}