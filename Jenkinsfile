pipeline{
    agent any
    stages{
        stage('checkout the code from github'){
            steps{
                 git branch: 'master', url: 'https://github.com/SrikantAU1989/Medical-master.git'
                 echo 'github url checkout'
            }
        }
        stage('codecompile with srikant'){
            steps{
                echo 'starting compiling'
                sh 'mvn compile'
            }
        }
        stage('codetesting with srikant'){
            steps{
                sh 'mvn test'
            }
        }
        stage('qa with akshat'){
            steps{
                sh 'mvn checkstyle:checkstyle'
            }
        }
        stage('package with srikant'){
            steps{
                sh 'mvn package'
            }
        }
        stage('Build with Maven') {
    steps {
        sh 'mvn clean package -DskipTests'
    }
}

        stage('run dockerfile'){
          steps{
               sh 'docker build -t myimg .'
           }
         }
        stage('port expose'){
            steps{
                sh 'docker run -dt -p 8092:8092 --name c000 myimg'
            }
        }   
    }
}
