pipeline {
    agent any

    tools {
        maven "3.6.3"
    }

    stages {
        stage("clean package") {
            steps {
                sh "mvn clean package"
            }
        }

        stage("Build") {
            steps {
                sh "docker build -t chento/kube-register:1.1.1 ."
            }
        }

        stage("Push Image") {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker-hub', passwordVariable: 'Chento@123', usernameVariable: 'chentochea')]) {
                    sh "docker build -t chentochea/kube-register:1.1.1 ."
                }
            }
        }
        
    }
}
