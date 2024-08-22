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
                withCredentials([usernamePassword(credentialsId: 'docker-hub', passwordVariable: 'PASSWORD', usernameVariable: 'USERNAME')]) {
                    sh "docker login -u $USERNAME -p $PASSWORD"
                    sh "docker build -t chentochea/kube-register:1.1.1 ."                }
                }

            }
        }

        
    }
}
