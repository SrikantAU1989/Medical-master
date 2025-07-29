pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/SrikantAU1989/Medical-master.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t hospital-app .'
            }
        }
        stage('Docker Run') {
            steps {
                sh '''
                  docker rm -f hospital-container || true
                  docker run -d -p 8091:8091 --name hospital-container hospital-app
                '''
            }
        }
    }
}
